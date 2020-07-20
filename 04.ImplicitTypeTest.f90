program ImplicitTypeTest

    ireal = 1.5   ! we want this to be a real number, but since the variable
                  ! name starts with an i Fortran thinks its an integer.
    
    write(*,*) 'ireal is: ', ireal
    
    end program ImplicitTypeTest
