% 파일명: euler_fill.m
x0 = 0; y0 = 0.5; h = 0.1; x_end = 2; % 초기 설정
x = x0 : ___(1)___ : ___(2)___; % 그리드 생성
N = length(x);
y = zeros(1, N);
y(1) = ___(3)___;
for k = 1 : N-1 % Euler 반복
	fval = ___(4)___; % f(x,y)=y - x^2 + 1
	y(k+1) = ___(5)___; % y_{k+1}=y_k + h·fval
end
y_exact = (x+1).^2 - 0.5*exp(x); % (추가) 해석해