function out=rc(t,ts,B)
out =1/ts*sinc(t/ts)*cos(pi*B*t/ts)/(1-(2*B*t/ts)^2);





end
