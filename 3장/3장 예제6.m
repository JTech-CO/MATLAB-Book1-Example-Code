% 문제 1 - 행렬 곱 vs 요소별 곱
A = [1 2; 3 4];
B = [5 6; 7 8];
disp('A * B ='), disp(A * B)
disp('A .* B ='), disp(A .* B)

% 문제 2 - 제곱근과 로그
v = [1, 10, 100];
disp('sqrt(v) ='), disp(sqrt(v))
disp('log10(v) ='), disp(log10(v))

% 문제 3 - 논리 필터링
x = -3:3;
disp('양수만:'), disp(x(x > 0))

% 문제 4 - 요소별 연산
t = 0:pi/4:pi;
disp('sin(t).*cos(t) ='), disp(sin(t) .* cos(t))

% 문제 5 - 익명 함수 활용
f = @(x) x.^3 - 2*x;
y = f([0 1 2]);
disp('y ='), disp(y)