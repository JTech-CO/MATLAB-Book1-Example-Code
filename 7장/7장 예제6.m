% for 루프 방식과 meshgrid 벡터연산 비교

% 범위 설정
n = 500;
x = linspace(-2, 2, n);
y = linspace(-2, 2, n);

% 루프 방식
Z1 = zeros(n, n);
tic
for i = 1:n
	for j = 1:n
		Z1(i,j) = sin(x(j)^2 + y(i)^2);
	end
end
t_loop = toc;

% meshgrid + 벡터화 방식
[X, Y] = meshgrid(x, y);
tic
Z2 = sin(X.^2 + Y.^2);
t_vec = toc;

% 결과 비교
fprintf('루프 방식: %.4f초\n', t_loop);
fprintf('벡터화 방식: %.4f초\n', t_vec);

% 차이 확인 (이론적으로 두 결과는 동일)
fprintf('최대 절대차: %.2e\n', max(abs(Z1(:) - Z2(:))));

% 시각화
figure
surf(X, Y, Z2) % 3D 서피스 플롯
shading interp
colormap parula
colorbar
title('Z = sin(x^2 + y^2)')
xlabel('x'), ylabel('y'), zlabel('z')
view(45, 30)