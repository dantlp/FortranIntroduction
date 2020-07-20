program FunctionTest

    implicit none
    
    real(8) :: a,b,c,myFunction
    
    a = 2.0
    b = 5.0
    
    c = myFunction(a,b)
    
    write(*,*) 'c is: ', c
    
end program FunctionTest

!-----------------------------------
! This is the external function:
real(8) function myFunction(x,y)  

    real(8) :: x,y
    myFunction = x*y

end function myFunction
!-----------------------------------
