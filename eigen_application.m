B = [2 2 4;
     1 3 5;
     2 3 4];
B

% a) solve for eigenvalues
[ev,dv] = eig(B)

% b) solve for the eigenvectors
a = B*ev(:,1)
a1 = 8.8092*ev(:,1)

b = B*ev(:,2)
b1 = 0.9262*ev(:,2)

c = B*ev(:,3)
c1 = -0.7352*ev(:,3)