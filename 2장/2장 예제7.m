% main_script.m
x = [1,2,3,4];
[y2, y3] = squareAndCube(x);

disp('x:'), disp(x)
disp('x.^2:'), disp(y2)
disp('x.^3:'), disp(y3)

subplot(2,1,1)
plot(x, y2, 'r*-')
title('제곱 결과')
subplot(2,1,2)
plot(x, y3, 'bo-')
title('세제곱 결과')