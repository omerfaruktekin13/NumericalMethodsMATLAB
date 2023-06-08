%%Golden Search Method for Minimum Value on Graph.
%NOTE: I created two different m files for this method because I want to show it
%on different equations.
clc; clear all; close all;
%Creating function and x interval to define equation and graph.
x=-5:1:5;
func= x.^2+7.*x+8;
%Plotting Equation
plot(x,func)
%Golden Number and calculations for Golden Search Method
Gold=(sqrt(5)-1)/2;
a=-5; b=5; %Again limits of the graph and estimation values for x
x1=Gold*a+(1-Gold)*b;
x2=(1-Gold)*a+Gold*b;

f1=x1.^2+7.*x1+8;
f2=x2.^2+7.*x2+8;
%Defining which is higher which is lower value on the graph and changing
%x1, x2, a and b values between themselves.
for j=1:100
   
    if f1<f2
        b=x2;
        x2=x1;
        f2=f1;
        x1=Gold*a+(1-Gold)*b;
        f1=x1.^2+7.*x1+8;
    else
        a=x1;
        x1=x2;
        f1=f2;
        x2=(1-Gold)*a+Gold*b;
        f2=x2.^2+7.*x2+8;
    end
    %Giving Tolerance
    if abs((b-a))< 1e-6
        break
    end
    
    f0=a.^2+7.*a+8;
    error=(b-a);
    fprintf('%d Error: %d\n',j,error);
end
%Plotting the minimum value on graph
hold on
plot(a,f0,'v');
fprintf('Answer: %f',a);