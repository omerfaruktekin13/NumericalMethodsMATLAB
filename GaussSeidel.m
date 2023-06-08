%Gauss Seidel Method
%Ax=b
%Diagonal of the coefficient matrix needs to be biggest
%value of its own row and columns.

A=[
16  1  6 14  1  3 14  1  9  3
12 17  3  9  7  6  6  3  5 15
 6  7  19 13 14 12  5 12  5  6
 7 15  7  24  7  4  7  9 14  4
 3  6  4  7  18  7  0 14  4 11
13 12  2  7 12  17  0 16  3 16
 3 12  7 15  9 14  19  7  7  9
 3 12 12 13  3  6  2 21 12  7
 0 14  0  0  6 14  8  4  35 10
10  5  7 11  1 10  8 12  7 42];
b=[15;12;7;-9;6;71;30;2;3;-8];
ab=[A b]; %Matris Combining
x=zeros(10,1);%Initial Values
n=size(A,1); % First Size of Matrix
error=linspace(10,10,n);%Error starting points for while loop
tolerance=10^-8; %Tolerance

while error>tolerance
    for k=1:n
        xold=x(k);
        num=ab(k,end)-ab(k,1:k-1)*x(1:k-1)-ab(k,k+1:n)*x(k+1:n); %Leaving alone the equation
        x(k)=num/ab(k,k); %Dividing to its diagonal value
        error(k)=abs(x(k)-xold); %Error calculation
    end
end

%Compare the analitic result with numeric result
difference=abs((A\b)-x);
fprintf('Difference is, %2.8f\n', difference(:,:));
%As a result, difference is so low and it can be neglected.
