% zeros_and_linspace.m
Z1 = zeros(1,5); % 1×5 영 벡터
Z2 = zeros(3,3); % 3×3 영 행렬
Z3 = zeros([2,4,3]); % 2×4×3 다차원 배열

x = linspace(0, 1, 11); % 0부터 1까지 11개 점
y = linspace(-pi, pi, 201); % -π부터 π까지 201개 점

t = linspace(0, 2*pi, 100); % 시간 벡터
A = zeros(1, numel(t)); % t와 같은 크기의 영 벡터 미리 생성
for i = 1:numel(t)
	A(i) = sin(2*t(i)) .* exp(-0.1*t(i)); % 감쇠 진동 부분
end

plot(t, A)
xlabel('t (rad)')
ylabel('A(t)')
title('감쇠 진동: A = sin(2t)·e^{-0.1t}')
grid on