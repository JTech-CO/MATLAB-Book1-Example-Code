% diff로 근사 도함수 구하기
x = linspace(0,2*pi,100);
y = sin(x);

% 수치미분: dy/dx = diff(y)./diff(x)
dy = diff(y) ./ diff(x);
x_mid = (x(1:end-1) + x(2:end))/2; % 차분 위치 보정
figure

plot(x_mid, dy, 'r-', 'LineWidth',1.5)
hold on
plot(x, cos(x), 'b--') % 실제 도함수 cos(x)
legend('수치미분','정확한 미분 cos(x)')
xlabel('x'), ylabel('dy/dx')
title('diff를 이용한 수치미분')
grid on
hold off

% int로 심볼릭 적분 구하기
syms t
F = int(cos(t), t); % 부정적분: sin(t)
I = int(cos(t), t, 0, pi/2); % 정적분: ∫₀^{π/2} cos(t) dt = 1
disp('부정적분 F(t)=sin(t):'), disp(F)
disp('정적분 ∫₀^{π/2} cos(t) dt:'), disp(I)

% trapz로 수치적분 구하기
time = 0:0.5:10; % 측정된 속도 데이터
vel   = 2*sin(pi*time/10) + 3;
distance = trapz(time, vel); % 수치적분으로 이동거리 계산
cumDist   = cumtrapz(time, vel)

figure % 그래프화 부분
plot(time, cumDist, 'LineWidth',1.5)
xlabel('Time (s)'), ylabel('Cumulative Distance')
title('trapz를 이용한 수치적분 누적거리')
grid on
disp(['총 이동 거리: ', num2str(distance), ' (units)']);