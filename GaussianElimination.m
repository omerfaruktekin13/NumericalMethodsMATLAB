%%Gaussian Elimination
clc; clear all; close all;

%Creating matrix and its result
A=[7 2 3; 4 6 1; 8 9 4];
B=[6;3;7];

%Combining Matrix
AB= [A, B];
disp(AB);

%%Changing Ab Matrix
%A(1,1) is reference
alpha= AB(2,1)/AB(1,1);
AB(2,:)=AB(2,:)-alpha*AB(1,:);
disp(AB);
alpha= AB(3,1)/AB(1,1);
AB(3,:)=AB(3,:)-alpha*AB(1,:);
disp(AB);

%A(2,2) is reference
alpha= AB(3,2)/AB(2,2);
AB(3,:)=AB(3,:)-alpha*AB(1,:);
disp(AB);