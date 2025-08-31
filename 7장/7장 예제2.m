% [A] 0으로 나눗셈
a = [1, 0, 2];
b = [0, 0, 0];
r1 = a ./ b; % [Inf, NaN, Inf]
disp(r1)

% [B] 로그·루트 정의역
x = [-1, 0, 4];
y_log   = log(x); % [NaN, -Inf, 1.3863]
y_sqrt = sqrt(x); % [NaN, 0, 2]
disp(y_log)
disp(y_sqrt)

% [C] 오버플로우
z = exp(1000); % Inf
disp(z)

% [D] Inf 연산
u = [Inf, 10];
v = [Inf, -Inf];
w1 = u - v; % [NaN, Inf]
w2 = u ./ v; % [NaN, -0]
disp(w1)
disp(w2)