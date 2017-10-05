function out=rrc(t,ts,B)


f1=(1/ts)*(1+B*(4/pi-1));%t=0
f2=(B/(ts*sqrt(2)))*((1+2/pi)*sin(pi/(4*B))+(1-2/pi)*cos(pi/(4*B)));%t=+-ts/4B
%f3(t)=(1/ts)*(sin(pi*(t/ts)*(1-B))+4*B*(t/ts)*cos(pi*(t/ts)*(1+B)))/(pi*(t/ts)*(1-(4*B*(t/ts))));%otherwise

if t==0
      out=f1;
elseif t==(ts/4*B) || t==(-ts/4*B)
      out=f2;

else
    out=(1/ts)*(sin(pi*(t/ts)*(1-B))+4*B*(t/ts)*cos(pi*(t/ts)*(1+B)))/(pi*(t/ts)*(1-(4*B*(t/ts))^2));    
end
end

%a=.5
%%b=1+f3(t)*((t~=ts/4*B)&&(t~=0))
%f(t)=(pi^2/(pi*(a-b)-4*a))*(4*a*cos(t*(a+b))+pi*sin(t*(b-a)))/t*(16*t^2*a^2-pi^2);
