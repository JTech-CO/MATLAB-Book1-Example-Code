x = 0:pi/6:2*pi;
y = sin(x);
figure
p = plot(x, y, '-.s', 'LineWidth', 1.5); % 스타일 + 마커 통합

p.Color = [0.8, 0.2, 0.2]; % 스타일 속성
p.MarkerSize = 8;
p.MarkerFaceColor = [1, 0.6, 0.6];
p.MarkerEdgeColor = [0.5, 0, 0];

xlabel('x (rad)')
ylabel('sin(x)')
title('스타일 적용된 sin(x)')
grid on