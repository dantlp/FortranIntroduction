program FileReadTest

    integer                            :: u, n
    real(8), dimension(:), allocatable :: a,b
    
    ! Open the file:
    open(newunit=u, file='log.txt', status='old')
    
    ! The first line of the file has the number of values for arrays a and b:
    read(u,*) n
    
    ! Allocate the arrays:
    allocate(a(n),b(n))
    
    ! Read in the values using an inline expression:
    read(u, *) ( a(i), b(i), i = 1,n)
    
    ! or you could use a do loop:
    ! do i = 1,n
    !   read(u, *) a(i), b(i)
    ! enddo
    !
    
    ! Close the file:
    close(u)
    
    ! Display the values:
    do i = 1,n
        write(*,*) a(i), b(i)
    enddo
    
    end program FileReadTest
