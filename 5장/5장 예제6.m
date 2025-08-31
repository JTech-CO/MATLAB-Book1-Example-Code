rng(1); % 불규칙 데이터 생성
X = sort(10 * rand(1, 15));
Y0 = sin(X) + 0.1 * X;
Y = Y0 + 0.2 * randn(1, 15);

Xq = linspace(0, 10, 200);
figure('Position', [100 100 800 600])
plot(X, Y, 'ko', 'MarkerFaceColor', 'y'); hold on

% 선형 보간
Y_lin = interp1(X, Y, Xq, 'linear');
plot(Xq, Y_lin, '-b', 'LineWidth', 1.5)

% 스플라인 보간
Y_spl = interp1(X, Y, Xq, 'spline');
plot(Xq, Y_spl, '--r', 'LineWidth', 1.5)

% 5차 다항식 적합
p5 = polyfit(X, Y, 5);
Y_p5 = polyval(p5, Xq);
plot(Xq, Y_p5, '-.g', 'LineWidth', 1.5)

legend('측정 데이터', '선형 보간', '스플라인 보간', '5차 적합', 'Location', 'Best')
xlabel('X'); ylabel('Y'); title('보간(interpolation) vs 적합(fitting)')
grid on
hold off