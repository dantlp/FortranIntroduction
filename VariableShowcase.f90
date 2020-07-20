program VariableShowcase

    implicit none
    
    ! Declare variables:
    integer         :: i
    real(16)         :: x
    complex(4)      :: z
    logical         :: bTest
    character(32)   :: sFileName
    
    i = 1
    x = 1.0
    z = cmplx(0.5,2.0)
    bTest = .false.    ! logical types are .true. or .false.
    sFileName = 'data.txt'

    write(*,*) 'i: ', i
    write(*,*) 'x: ', x
    write(*,*) 'z: ', z
    write(*,*) 'bTest: ', bTest
    write(*,*) 'sFileName: ', sFileName
    
    end program VariableShowcase
