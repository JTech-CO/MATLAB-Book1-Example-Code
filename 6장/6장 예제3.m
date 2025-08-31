function [root, iter] = newton(f, df, x0, tol, maxIter)
x = x0;
for k = 1:maxIter
	dx = f(x)/df(x);
	x = x - dx;
	if abs(dx) < tol
		break;
	end
end
root = x; iter = k;
end