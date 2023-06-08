%%LU Decomposition Gaussian Method
clc; clear all; close all;

%Create Matrix
A=[1 2 7; 4 5 1; 8 9 4];

%Result of Matrix
B=[6;3;7];

%Combining Matrixes
AB= [A, B];
disp(AB);
n=length(A);
L=eye(n);

%%Changing AB and L matrixes
%A(1,1) is reference
for i=2:3
    alpha=AB(i,1)/AB(1,1);
    L(i,1)=alpha;
    AB(i,:)=AB(i,:)-alpha*AB(1,:);
    disp(AB);
end

%A(2,2) is reference
alpha=AB(3,2)/AB(2,2);
L(3,2)=alpha;
AB(3,:)=AB(3,:)-alpha*AB(2,:);
disp(AB);

%Creating U matrix
U=AB(1:n,1:n);

%Show the verification of result
if L*U==A
    disp(L*U);
    disp('Answer is correct.')
end
