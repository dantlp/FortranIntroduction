program Mandelbrot
    use types, only: dp
    use constants, only: i_
    use utils, only: savetxt
    use mesh, only: linspace, meshgrid

    implicit none
    
    integer, parameter :: ITERATIONS = 100
    integer, parameter :: DENSITY = 2000
    real(dp) :: x_min, x_max, y_min, y_max
    real(dp), dimension(DENSITY, DENSITY) :: x, y
    complex(dp), dimension(DENSITY, DENSITY) :: c, z
    integer, dimension(DENSITY, DENSITY) :: fractal
    integer :: n

    real(8)  :: time_start, time_end

    x_min = -2.68_dp
    x_max = 1.32_dp
    y_min = -1.5_dp
    y_max = 1.5_dp
    
    call meshgrid(linspace(x_min, x_max, DENSITY), &
        linspace(y_min, y_max, DENSITY), x, y)
    c = x + i_*y
    z = c
    fractal = 255
    
    call cpu_time(time_start)
    
    write (*, '("Mandelbrot with Fortran")')
    write (*, '("ITERATIONS = ", i0)') ITERATIONS
    write (*, '("DENSITY = ", i0)') DENSITY
    do n = 1, ITERATIONS
        where (abs(z) <= 10) z = z**2 + c
        where (fractal == 255 .and. abs(z) > 10) fractal = 254 * (n-1) / ITERATIONS
    end do
    
    call cpu_time(time_end)

    write (*, '("CPU time ", f0.3, " seconds")') time_end - time_start

    write (*, *) "Saving..."
    call savetxt("fractal.dat", log(real(fractal, dp)))
    call savetxt("coord.dat", reshape([x_min, x_max, y_min, y_max], [4, 1]))
end program
