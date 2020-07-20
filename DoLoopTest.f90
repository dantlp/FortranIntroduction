program DoLoopTest
    implicit none
    
    integer :: i, n
    
    n = 10
    
    do i = 1,n
      write(*,*) 'i is ', i
    enddo
    
    end program DoLoopTest
