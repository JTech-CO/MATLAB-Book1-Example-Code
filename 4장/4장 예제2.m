% 예제 데이터 값
x = linspace(0, 2*pi, 100); % 0~2π를 100등분
y1 = sin(x);
y2 = cos(x);

% 한 줄에 두 개의 그래프 그리기
plot(x, y1, '-r', 'LineWidth', 1.5); hold on
plot(x, y2, '--b', 'LineWidth', 1.5);

% 축 범위 지정
xlim([0 2*pi]); ylim([-1.2 1.2]);

% 축 눈금 및 라벨 설정
xticks(0:pi/2:2*pi);
xticklabels({'0','π/2','π','3π/2','2π'});
yticks(-1:0.5:1);

% 라벨·제목·범례·격자
xlabel('x (rad)');
ylabel('Amplitude');
title('Sine and Cosine Waves');
legend('sin(x)', 'cos(x)', 'Location', 'northeast');
grid on
hold off