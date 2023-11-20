%Linear Transformation
syms x y 
eq1=4*x+3*y==20
eq2=-5*x+9*y==26
[eq1,eq2]=equationsToMatrix([eq1,eq2],[x,y])
c=linsolve(eq1,eq2)
plot(eq1,eq2)
title('My Plot')
grid on
xlabel('x-axis')
ylabel('y-axis')
legend('Data points')
hold on
plot(eq1,eq2,'*')

syms x y z
a = 4*x + 3*y + 2*z == 25
b = -2*x + 2*y + 3*z == -10
c = 3*x - 5*y + 2*z == -4
[A,B] = equationsToMatrix([a, b, c], [x, y, z])  
d = linsolve(A,B)

x=0:2:10
y=x+1
plot(x,y)
xlabel('x-axis')
ylabel('y-axis')
hold on
plot(x,y,'*')
grid on                                                                                                       