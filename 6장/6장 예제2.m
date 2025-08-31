% sinc_plot.m
% sinc 함수(y = sin(x)/x)를 계산·그래프 출력

% 1. 입력 벡터 생성 (0에서 2π까지 0.1 간격)
x = 0:0.1:2*pi;

% 2. sinc 함수 계산: y = sin(x)./x (x=0일 때 1로 정의)
y = sin(x)./x;
y(x==0) = 1; % x=0일 때 0/0 문제 방지

% 3. 그래프 출력
figure
plot(x, y, 'b-','LineWidth',1.5)
xlabel('x (rad)'), ylabel('sinc(x)')
title('sinc 함수 그래프')
grid on