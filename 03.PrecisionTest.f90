program PrecisionTest

    implicit none
    
    ! Declare variables:
    integer         :: i
    integer(4)      :: i4
    integer(8)      :: i8
    real(4)         :: x4
    real(8)         :: x8
    real*16  x16  ! older style

    
    write(*,*) 'integer:    ', huge(i)
    write(*,*) 'integer(4): ', huge(i4)
    write(*,*) 'integer(8): ', huge(i8)
    write(*,*) 'real(4):    ', huge(x4)
    write(*,*) 'real(8):    ', huge(x8)
    write(*,*) 'real(16):    ', huge(x16)
    
    end program PrecisionTest
