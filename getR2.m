function [r] = getR2(x,y)
x = x(:);
y = y(:);
indOK= find(~isnan(x)&~isnan(y));

r = corr(x(indOK), y(indOK));
r = r.^2;
end