program SubRoutineTest

    implicit none
    
    real(8) :: a,b,c,d
    
    a = 2.0
    b = 5.0
    
    call subroutineA(a,b,c)  ! a and b are input, c is returned
    call subroutineB(a,b,c,d)  ! a,b and c are input, d is returned
    write(*,*) 'c is: ', c
    write(*,*) 'd is: ', d
    
end program SubRoutineTest
    
!-----------------------------------
subroutine subroutineA(a,b,c)
    implicit none
    real(8), intent(in)  :: a,b
    real(8), intent(out) :: c
    
    c = a*b
    
end subroutine subroutineA

!-----------------------------------
subroutine subroutineB(a,b,c,d)
    implicit none
    real(8), intent(in)  :: a,b,c
    real(8), intent(out) :: d
    
    real(8)              :: x
    
    x = 11D0
    
    d = a + b + x*c
    
end subroutine subroutineB
!-----------------------------------
