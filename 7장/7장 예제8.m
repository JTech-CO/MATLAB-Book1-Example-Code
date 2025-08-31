% 퀴즈 & 기말고사 문제 정답

% === [2-6] ===

% 문제 1. 균일 분할 벡터 생성 정답
x = linspace(0, 1, 11)

% 문제 2. 미리 할당된 0 행렬 정답
A = zeros(3, 4)

% 문제 3. 콜론 인덱싱 정답
row2 = A(2, :);

% 문제 4. 익명 함수 정의 정답
f = @(t) sin(2*t);

% 문제 5. 파일 함수 구현 (squarePlusOne.m) 정답
function y = squarePlusOne(x)
	y = x.^2 + 1;
end

% === [6-1] ===

% 문제 1. Newton–Raphson법 구현 정답
% newton_exp.m
function [root, iter] = newton_exp(f, df, x0, tol, maxIter)
	x = x0;
	for k = 1:maxIter
		dx = f(x) / df(x);
		x = x - dx;
		if abs(dx) < tol, break; end
	end
	root = x;
	iter = k;
end

% hw1.m
f = @(x) exp(-x) - x; % 함수·미분 정의
df = @(x) -exp(-x) - 1;
[xN, itN] = newton_exp(f, df, 0.5, 1e-8, 100); % Newton–Raphson
xF = fzero(f, 0.5); % fzero 비교
fprintf('Newton 해 : %.10f (iter=%d)\n', xN, itN);

% 문제 2. Euler 전진법 ODE 정답
% hw2.m
h = 0.1; % 스텝
x = 0:h:2; % 노드
y = zeros(size(x));
y(1) = 0.5; % 초기값

for k = 1:numel(x)-1
	y(k+1) = y(k) + h*(y(k) - x(k)^2 + 1);
end

y_exact = (x+1).^2 - 0.5*exp(x);
plot(x, y, '-b', x, y_exact, '--r','LineWidth',1.5)
legend('Euler','Analytical','Location','Best')
xlabel('x'), ylabel('y')
title('Euler vs Analytical'), grid on

% 문제 3. 선형·스플라인 보간 정답
% hw3.m
X = [0 0.3 0.7 1.4 1.8 2.0];
Y = sin(X) + 0.1*randn(size(X));

xq = 0:0.05:2;
y_lin = interp1(X, Y, xq, 'linear');
y_spl = interp1(X, Y, xq, 'spline');

plot(X, Y, 'ko', ...
	xq, y_lin, '-b', ...
	xq, y_spl, '--r','LineWidth',1.5)
legend('Original','Linear','Spline','Location','Best')
grid on, xlabel('x'), ylabel('y'), title('Interpolation Comparison')

% 문제 4. 선형 연립방정식 정답
% hw4.m
e = ones(5,1);
A = spdiags([e -2*e e], -1:1, 5, 5); % 5×5 tridiagonal
b = (1:5)';
x1 = A\b; % 백슬래시
x2 = linsolve(A,b); % linsolve
fprintf('‖x1 - x2‖₂ = %.2e\n', norm(x1-x2));

% 문제 5. 2×2 서브플롯 배치 정답
% hw5.m
x = linspace(0, 2*pi, 100);

funcs = {@sin, @cos, @(t)sin(2*t), @(t)cos(2*t)};
titles = {'sin(x)','cos(x)','sin(2x)','cos(2x)'};

figure
for n = 1:4
	subplot(2,2,n)
	plot(x, funcs{n}(x), 'o-','LineWidth',1.5,'MarkerSize',6)
	title(titles{n}), grid on
end
sgtitle('Trigonometric Functions')

% === [7-1] ===

% 예제 1. Syntax 오류 정답
A = [1 2; 3 4];
B = [5 6; 7 8];
C = A * B; % 정상 실행

% 예제 2. Runtime(실행) 오류 정답
y = sin(x)./x;
y(1) = 1;
% 또는
y = sin(x)./(x + eps); % eps(≈2.2e-16)로 0 회피

% 예제 3. Runtime(차원 불일치) 오류 정답
w = [4 5 6]; % 크기를 v와 맞추거나
z = v .* w; % → [4 10 18]
% 또는
z = v .* w'; % w를 열벡터로 전치해 3×1·1×3 → 3×3 행렬