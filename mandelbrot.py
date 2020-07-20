import numpy as np
import time

ITERATIONS = 100
DENSITY = 1000
x_min, x_max = -2.68, 1.32
y_min, y_max = -1.5, 1.5

x, y = np.meshgrid(np.linspace(x_min, x_max, DENSITY),
                   np.linspace(y_min, y_max, DENSITY))
c = x + 1j*y
z = c.copy()
fractal = np.zeros(z.shape, dtype=np.uint8) + 255

tic = time.perf_counter()

print(f'ITERATIONS = {ITERATIONS}')
print(f'DENSITY = {DENSITY}')

for n in range(ITERATIONS):
    mask = abs(z) <= 10
    z[mask] *= z[mask]
    z[mask] += c[mask]
    fractal[(fractal == 255) & (~mask)] = 254. * n / ITERATIONS

toc = time.perf_counter()

print(f"CPU time {toc - tic:0.4f} seconds")

print("Saving...")
np.savetxt("fractal.dat", np.log(fractal))
np.savetxt("coord.dat", [x_min, x_max, y_min, y_max])
