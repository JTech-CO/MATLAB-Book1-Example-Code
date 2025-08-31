[x, y] = meshgrid(-2:0.1:2, -2:0.1:2); % X와 Y 각각 정의
z = sin(x.^2 + y.^2) ./ (x.^2 + y.^2 + eps);

figure
surf(x, y, z, 'EdgeColor', 'none'); % 매끄러운 서피스
colormap(parula); % parula = 기본 컬러맵
caxis([-0.5, 1]); % 색상 범위 고정
colorbar % 컬러바 표시
title('Parula 컬러맵 예제');
xlabel('x'); ylabel('y'); zlabel('z');
view(45, 30); % 시점 설정