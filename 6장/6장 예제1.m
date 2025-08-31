% hw2.m - Euler 방법으로 초기값 문제 풀기
x0 = 0; y0 = 0.5; h = 0.1; x_end = 2;
% 시작점, 초기값 y(0), 스텝 크기, 끝점 설정

x = x0:h:x_end; % x 벡터
N = length(x); % 점 개수
y_num = zeros(1, N); % 수치해 저장용 벡터
y_num(1) = y0; % 초기값 설정

% Euler 전진법 루프
for k = 1:N-1
	fval = y_num(k) - x(k)^2 + 1; % y' = y - x^2 + 1
	y_num(k+1) = y_num(k) + h * fval;
end

% 해석해 부분
y_exact = (x + 1).^2 - 0.5 * exp(x);

% 그래프
plot(x, y_num, '-ob', x, y_exact, '--r','LineWidth',1.5)
legend('Euler 수치해','해석해','Location','Best')
xlabel('x'), ylabel('y')
title('Euler 방법과 해석해 비교')
grid on

% 최대 오차 출력
err = max(abs(y_num - y_exact));
fprintf('최대 오차: %.2e\n', err);