program equacaosegundograu
implicit none
real:: a, b, c
real:: delta, x1, x2

write(*,*) "Inser‡Æo de valores a b c:"
read(*,*) a, b, c

delta = b*b-4*a*c

if (delta>0) then
        ! alternƒncia de solu‡äes.
        x1 = (-b+sqrt(delta))/(2*a)
        x2 = (-b-sqrt(delta))/(2*a)
        write(*,*) "x1=", x1
        write(*,*) "x2=", x2
else if (delta == 0) then
      !sem alternƒncia de solu‡äes.
      x1 = -b/(2*a)
      write(*,*) "x1=x2=", x1
else
      ! NÆo h  solu‡Æo real.
      write (*,*) "Delta < 0 nÆo possui uma solu‡Æo real"
      stop 1

end if
end program

