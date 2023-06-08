%%Golden Search Method for Maximum Value on Graph
clc; clear all; close all;

%Creating function and lower and upper estimations.
func= @sin;
xLow= 0.1;
xUp=pi;

%Plot of function
fplot(func);

%Implementing them into functions
fL=func(xLow);
fU=func(xUp);

%Golden Number and calculations for Golden Search Method
R=(sqrt(5)-1)/2;
d=R*(xUp-xLow);
x1=xUp-d;
x2=xLow+d;
f1=func(x1);
f2=func(x2);

%Tolerance 
t=1e-6;
error=inf;

%Creating Loop For Changing xLow, xUp, x1 and x2 values between themselves
while error>t
    
    if f1>f2
        xUp=x2;
        fU=f2;
        x2=x1;
        f2=f1;
        d=R*(xUp-xLow);
        x1=xUp-d;
        f1= func(x1);
    elseif f1<f2
        xLow=x1;
        fL=f1;
        x1=x2;
        f1=f2;
        d=R*(xUp-xLow);
        x2=xLow+d;
        f2=func(x2);
    else
        xLow=(x1+x2)/2;
        xUp=xLow;
    end
    
    error= 2*abs((xUp-xLow)/(xUp+xLow));
    fprintf('Error: %d\n',error);
end

%We found the closest x1 and x2 values which we want. However, real value
%of the maximum point of the graph should be average of them because we are
%doing estimation.
answer=(x1+x2)/2;
%Showing Result on Graph
hold on
plot(answer,func(answer),'v');
xlabel=('X');
ylabel=('SIN(X)');
fprintf('Answer: %f',answer);