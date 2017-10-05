clc
clear
a=1000;
%for i=-a:0.001:a
 %   k(int64(1000*(i+a+.001)))=f(i);
%end
%i=-a:.001:a;
%plot(i,k)
B=.5;
ts=1000;

input=[1 0 1 1 0 0];
%rrc
syms z t;
f(z)=0*z;
for i=1:6
    f(z)=f(z)+input(1).*rrc(t-i*ts,ts,B);
end
%rc
g(z)=0*z;
for i=1:6
    g(z)=g(z)+input(1).*rc(t-i*ts,ts,B);
end

%%
figure 
hold all
ezplot(f,[-10000, 10000])
ezplot(g,[-10000, 10000])