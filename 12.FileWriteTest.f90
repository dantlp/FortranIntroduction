program FileWriteTest

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
    
    ! Modify the data
    do i = 1,n
        a(i) = 2*a(i)
        b(i) = a(i)**2
    enddo

    ! Display the values:
    do i = 1,n
        write(*, '(f6.1, 1x, f6.1)') a(i), b(i)
    enddo

    ! Save the results to a new file
    open(newunit=u, file='newlog.txt', status='replace')
    !write(u, *) a, b
    write(u, '(i0)') n
    do i = 1,n
        write(u, '(f0.0, 1x, f0.0)') a(i), b(i)
    enddo
    close(u)

    end program FileWriteTest
