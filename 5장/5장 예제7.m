% 함수 및 도함수 정리
f   = @(x) x.^3 - 2*x - 5;
df = @(x) 3*x.^2 - 2;

% Newton–Raphson 구현(반복 횟수·허용오차 지정) % newton.m
function [root, iter] = newton(f, df, x0, tol, maxIter)
	x = x0;
	for k = 1:maxIter
		dx = f(x) / df(x);
		x = x - dx;
		if abs(dx) < tol
			break;
		end
	end
	root = x;
	iter = k;
end

% 스크립트에서 실행
x0 = 2; % 초기 추정값
tol = 1e-8; % 허용오차
maxIter = 50; % 최대 반복

[r, it] = newton(f, df, x0, tol, maxIter);
fprintf('Newton–Raphson 해: %.10f (반복 %d회)\n', r, it);

% fzero와 비교
r_fz = fzero(f, x0);
fprintf('fzero 해: %.10f\n', r_fz)