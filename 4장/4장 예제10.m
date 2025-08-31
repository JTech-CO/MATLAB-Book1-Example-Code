x = linspace(0,1,50);
y = sin(2*pi*5*x);

figure
plot(x, y)
title('잘못된 축 범위 예시') % 잘못 설정된 축: y가 -1~1 범위인데 0~0.5로 고정
ylim([0 0.5]) % → 그래프 대부분이 보이지 않음

% 문제 해결 1: 축 자동 복원
axis auto % 또는 axis tight