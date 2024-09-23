///scr_funclineal(x1,z1,x2,z2,curx);
x1=argument0
z1=argument1
x2=argument2
z2=argument3
curx=argument4
m=(z2-z1)/(x2-x1)
b=z1-(m*x1)
return (m*curx)+b
