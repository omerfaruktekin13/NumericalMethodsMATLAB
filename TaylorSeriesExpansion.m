clc; clear all; close all;
syms x
f=x^2+sin(x);
firsto=taylor(f,'Order',2,'ExpansionPoint', 1);
secondo=taylor(f,'Order',3,'ExpansionPoint', 1);
thirdo=taylor(f,'Order',4,'ExpansionPoint', 1);
fplot([firsto secondo thirdo f])
legend('First','Second','Third','f')
xlim([-2 3])
grid on
f_1=@(x)x^2+sin(x);

hold on
plot(1,f_1(1),'*r')

x_1=-2:0.1:3;
figure;
subplot(2,2,1)
fplot(firsto-f)
xlim([-2 3])
grid on
subplot(2,2,2)
fplot(secondo-f)
xlim([-2 3])
grid on
subplot(2,2,3)
fplot(thirdo-f)
xlim([-2 3])
grid on


