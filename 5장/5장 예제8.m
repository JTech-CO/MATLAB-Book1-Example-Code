% 격자 설정
n = 11; % 격자점 개수(경계 포함)
x = linspace(0,1,n)'; % 열 벡터
h = 1/(n-1); % 격자 간격

% 계산 행렬·우변 벡터 작성
m = n-2; % 2~n-1 지점(내부 노드) 개수

% 2nd difference 행렬 (A y_int = f)
e = ones(m,1);
A = (diag(-2*e) + diag(e(1:end-1),1) + diag(e(1:end-1),-1)) / h^2;

% 우변 f = -π^2 sin(π x_i)
f = -pi^2 * sin(pi*x(2:end-1));

% 선형 시스템 풀이
y_int = linsolve(A, f);
y_num = [0; y_int; 0]; % 경계조건 포함

% 결과 비교 및 시각화
y_exact = sin(pi*x);

plot(x, y_num, 'bo-','LineWidth',1.5); hold on
plot(x, y_exact, 'r--','LineWidth',1.5);
xlabel('x'); ylabel('y(x)');
legend('유한차분 해','해석 해','Location','Best');
title('경계값 문제: y''''=-π^2 sin(πx), y(0)=y(1)=0');
grid on;
hold off;

% 오차 확인
err = max(abs(y_num - y_exact));
fprintf('최대 오차: %.3e\n', err);