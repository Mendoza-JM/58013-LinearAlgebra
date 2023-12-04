A = [-6 3;4 5];
A

[ev,dv] = eig(A)

ev1 = [-0.9487;0.3162];
ev1

s = A*ev1(:,1);
s

t = A*ev1;
t

u = 7*ev1;
u

v = A*ev(:,2);
v

ev2 = [-0.2425;-0.9701];
ev2

w = 6*ev2;
w