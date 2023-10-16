A = [1 1 1;
     1 2 2;
     1 2 3];
B = [5;
     6;
     8];

matrixSize = length(A);
Lower = zeros(size(A));
Upper = zeros(size(A));
Lower(:,1) = A(:,1);
Upper(1,:) = A(1,:);

for k = 1:matrixSize
    Upper(1,k) = A(1,k);
end

for k = 2:matrixSize
    for j = k:matrixSize
        sum = 0;
        for p = 1:k-1
            sum = sum + Lower(k,p) * Upper(p,j);
        end
        Upper(k,j) = A(k,j) - sum;
    end

    for i = k:matrixSize
        sum = 0;
        for p = 1:k-1
            sum = sum + Lower(i,p) * Upper(p,k);
        end
        Lower(i,k) = (A(i,k) - sum) / Upper(k,k);
    end
end

% Solving LY = B for Y
Y = zeros(matrixSize, 1);
Y(1) = B(1);

for row = 2:matrixSize
    Y(row) = B(row) - Lower(row, 1:row-1) * Y(1:row-1);
end

% Solving UX = Y for X
X = zeros(matrixSize, 1);
X(matrixSize) = Y(matrixSize) / Upper(matrixSize, matrixSize);

for row = matrixSize-1:-1:1
    X(row) = (Y(row) - Upper(row, row+1:matrixSize) * X(row+1:matrixSize)) / Upper(row,row);
end

X % The solution vector