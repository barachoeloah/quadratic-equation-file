program equacaosegundograu
implicit none
real:: a, b, c
real:: delta, x1, x2

write(*,*) "Inser��o de valores a b c:"
read(*,*) a, b, c

delta = b*b-4*a*c

if (delta>0) then
        ! altern�ncia de solu��es.
        x1 = (-b+sqrt(delta))/(2*a)
        x2 = (-b-sqrt(delta))/(2*a)
        write(*,*) "x1=", x1
        write(*,*) "x2=", x2
else if (delta == 0) then
      !sem altern�ncia de solu��es.
      x1 = -b/(2*a)
      write(*,*) "x1=x2=", x1
else
      ! N�o h� solu��o real.
      write (*,*) "Delta < 0 n�o possui uma solu��o real"
      stop 1

end if
end program

