% 4분할 창에 서브플롯으로 서로 다른 함수 그려보기
x = linspace(0, 2*pi, 100); figure;

subplot(2,2,1); % 1번: sin(x)
plot(x, sin(x), '-r', 'LineWidth', 1.5);
title('sin(x)'); ylabel('sin(x)'); grid on

subplot(2,2,2); % 2번: cos(x)
plot(x, cos(x), '--b', 'LineWidth', 1.5);
title('cos(x)'); ylabel('cos(x)'); grid on

subplot(2,2,3); % 3번: tan(x) (y축 범위 제한)
plot(x, tan(x), ':k', 'LineWidth', 1.5);
title('tan(x)'); ylabel('tan(x)'); ylim([-10 10]); grid on

subplot(2,2,4); % 4번: exp(-x)
plot(x, exp(-x), '-.g', 'LineWidth', 1.5);
title('exp(-x)'); ylabel('exp(-x)'); grid on

sgtitle('Subplot으로 네 가지 함수 비교')