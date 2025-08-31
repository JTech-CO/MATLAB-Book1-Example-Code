[x,y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = sin(x.^2 + y.^2) ./ (x.^2 + y.^2 + eps);

figure
surf(x, y, z)
xlabel('x')
ylabel('y')
zlabel('z = sin(x^2+y^2)/(x^2+y^2)')
title('감쇠된 원형 파동 3D 서피스')
shading interp % 면의 색상을 부드럽게
colorbar % 색상 막대 표시