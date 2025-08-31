f = @(x) x.^2 + 3*x + 1; % 익명 함수: 2차함수

vals = -2:1:2; results = f(vals); % 벡터화 연산 지원
disp('x 값:'), disp(vals)
disp('f(x) 값:'), disp(results)

plot(vals, results, 'o-')
xlabel('x'); ylabel('f(x)')
title('익명 함수 f(x)=x^2+3x+1')
grid on