x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

figure
plot(x, y1, 'r-')
hold on
plot(x, y2, 'b--')
title('hold on 적용 예시')
xlabel('x'), ylabel('값')
legend('sin','cos')
grid on

% 만약 이전에 hold가 off 상태라면 두 번째 그래프만 보이거나
% hold가 계속 on 상태면 figure에 계속 그려져 엉킬 수 있음
hold off % 다음 plot이 깔끔히 새로 그려지도록 리셋