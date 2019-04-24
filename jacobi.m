%George Mendez Question 2
function y = jacobi(A,b,X,k)
%Input variables
%A = [4 -1 1;4 -8 1;-2 1 5];
%b = [7; -21; 15];
%X = [1; 6; 7];
%k = 6; Any k would do

%initialize your guess
x1= X(1,1);
x2= X(2,1);
x3= X(3,1);

%Jacobi iteratton
for i=1:k
    x1 = (b(1,1)-A(1,2)*x2-A(1,3)*x3)/A(1,1);
    x2 = (b(2,1)-A(2,1)*x1-A(2,3)*x3)/A(2,2);
    x3 = (b(3,1)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
end

%reset results
X = [x1;x2;x3];

%Display results
display(X)
end