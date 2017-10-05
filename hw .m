
clc
clear

syms z;
f(z)=(1+z^2)^-1;

tk=input('input the odd num k\n');
if(mod(tk,2)==1)
    k=tk;
else
    error('The inputed k must be an odd number');
    
end

pr=zeros(k);
d=zeros(k,1);
%cn=zeros(k,1);

d((k+1)/2,1)=1;

for i=1:k
    for j=1:k
      pr(i,j)=f(i-j);
    end
end
cn=inv(pr)*d;
b=(k-1)/2;
a=-b;

for j=a:b
    out=0;
    for i=a:b
      out =out+cn(i+b+1)*f(j-i);
    end
    peq(j+b+1)=out;
end


 for j=a:1:b
      plotf(j+b+1)=f(j);
 end
j=a:1:b;
figure
hold all;
%subplot(1,2,1)
%plot(j,plotf)
fplot(f,[-10 10])
%subplot(1,2,2)
plot(j,peq)

format long
%double(peq)

p = polyfit(j,peq,8);
j=-4:.01:4;
Fit = polyval(double(p),j);
plot(j,Fit);

