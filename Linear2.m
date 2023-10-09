syms x1 x2 x3;
eq1 = 3*x1-9*x3 == 33;
eq2 = 7*x1-4*x2-x3 == -15;
eq3 = 4*x1+6*x2+5*x3 == -6;

sol = solve([eq1,eq2,eq3],[x1,x2,x3])
x1 = sol.x1
x2 = sol.x2
x3 = sol.x3
%%
A = [3,0,-9; 7,-4,-1; 4,6,5;]

A1 = [33,0,-9; -15,-4,-1; -6,6,5;]
A2 = [3,33,-9; 7,-15,-1; 4,-6,5;]
A3 = [3,0,33; 7,-4,-15; 4,6,-6;]



x1 = det(A1)/det(A)
x2 = det(A2)/det(A)
x3 = det(A3)/det(A)