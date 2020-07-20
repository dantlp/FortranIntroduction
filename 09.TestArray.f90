program TestArray

    real(8), dimension(10) :: xArray
    integer                :: i
    integer                             :: m,n
    real(8),dimension(:),   allocatable :: xArray1D
    real(8),dimension(:,:), allocatable :: xArray2D

    
    do i = 1,size(xArray)
      xArray(i) = 5.0*i
    enddo
    
    write(*,*) 'xArray: ', xArray
    
    m = 5
    n = 10

    allocate(xArray1D(m))
    allocate(xArray2D(m,n))

    write(*,*) size(xArray2D,1)   ! returns the size of the 1st dimension
    write(*,*) size(xArray2D,2)   ! returns the size of the 2nd dimension
    write(*,*) size(xArray2D)     ! returns the total number of elements (m*n in this example)

    deallocate(xArray1D, xArray2D)
    
    end program TestArray
