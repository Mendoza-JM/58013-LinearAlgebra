A = [8 5 -6;
    -12 -9 12;
    -3 -3 5]

% a) solve for eigenvalues
[ev,dv] = eig(A)

% b) solve for the eigenvectors
a = A*ev(:,1)
b = A*ev(:,2)
c = A*ev(:,3)