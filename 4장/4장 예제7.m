x = linspace(0, 2*pi, 100);
y = {@sin, @cos, @tan, @(x) exp(-x)};
styles = {'-r', '--b', ':k', '-.g'};
titles = {'sin(x)', 'cos(x)', 'tan(x)', 'exp(-x)'};

figure % for문을 사용해서 축약한 2x2 서브플롯 그래프
for i = 1:4
	subplot(2,2,i)
	plot(x, y{i}(x), styles{i}, 'LineWidth', 1.5)
	title(titles{i})
	xlabel('x'); ylabel(titles{i})
	if i == 3, ylim([-10 10]); end
	grid on
end
sgtitle(' Subplot으로 네 가지 함수 비교')