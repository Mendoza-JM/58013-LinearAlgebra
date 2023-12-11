syms x y z;
eq1 = 3*x-y+z == 5;
eq2 = 9*x-3*y+3*z == 15;
eq3 = -12*x+4*y-4*z == -20;

Answer = solve([eq1,eq2,eq3],[x,y,z])