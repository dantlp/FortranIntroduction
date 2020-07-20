program DoWhileTest

    implicit none
    
    integer :: iCounter
    logical :: lKeepGoing
    
    lKeepGoing = .true.
    iCounter   = 0
    
    do while (lKeepGoing)
    
      iCounter = iCounter + 1
      write(*,*) 'iCounter: ',iCounter
    
      if (iCounter == 10 ) lKeepGoing = .false.
    
    enddo
    write(*,*) 'All done'
    
    end program DoWhileTest
