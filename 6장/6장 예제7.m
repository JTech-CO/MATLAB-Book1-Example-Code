% 파일명: linsolve_fill.m
e = ones(5,1);
A = spdiags([e -2*e e], -1:1, 5, 5);
b = [1;2;3;4;5];
x1 = A ___(1)___ b; % 백슬래시 연산
x2 = linsolve(A, ___(2)___); % linsolve 사용
error = norm(x1 - ___(3)___); % 오차 계산
disp(error);