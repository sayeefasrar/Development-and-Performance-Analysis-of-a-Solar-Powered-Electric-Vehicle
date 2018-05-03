function [m c] = lineReg(x,y)
sx = sum(x);
sy = sum(y);
sxy = sum(x.*y);
sx2 = sumsqr(x);
n = length(x);

m = (n*sxy -sx.*sy)/(n*sx2-sx^2);

c = (sy/n)- m*sx/n;
