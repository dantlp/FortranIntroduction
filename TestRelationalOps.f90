program TestRelationalOps

    real(8) :: x,y,z
    logical :: ltest1, ltest2, ltest3
    
    x = 1.0
    y = 2.0
    z = 1.0
    
    ltest1 = x < y
    ltest2 = x == z
    ltest3 = (ltest1.and.ltest2)
    
    write(*,*) 'ltest1: ', ltest1
    write(*,*) 'ltest2: ', ltest2
    write(*,*) 'ltest3: ', ltest3
    
    end program TestRelationalOps
