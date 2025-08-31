% 문제 1~4 정답

% 1
for k = 1: maxIter % (1)
	dx = f(x) / df(x); % (2)
	if abs(dx) < tol % (3)
		break;
	end
end

% 2
x = x0 : h : x_end; % (1)=h, (2)=x_end
y(1) = y0; % (3)
fval = y(k) - x(k)^2 + 1; % (4)
y(k+1) = y(k) + h * fval; % (5)

% 3
Xq = linspace(0, 2, 200); % (1)=linspace
Y_lin = interp1(X, Y, Xq, 'linear'); % (2)='linear'
Y_spl = interp1(X, Y, Xq, 'spline'); % (3)='spline'

% 4
x1 = A \ b; % (1)='\'
x2 = linsolve(A, b); % (2)=b
error = norm(x1 - x2); % (3)=x2