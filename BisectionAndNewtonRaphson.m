% Bisection Method with Symbolic Equations
syms x
n=10;
f=tanh(x);
df=diff(f);
a=-10; b=15;
%Bisection
for i=1:n/2
    xr=(a+b)/2;
    y=double(subs(f,x,xr));
    z=double(subs(f,x,a));
    u=double(subs(f,x,b));
    if (y*u<0)
        a=xr;
    else
        b=xr;
    end
end
%Newton Raphson with Symbolic Equations
difff=subs(df,x,x);
xt=a;
for i=1:n/2
    difff=subs(df,x,xt(i));
    func=subs(f,x,xt(i));
    xt(i+1)=xt(i)-func(1)/difff(1);
end
xt