% [1] 루프 방식
N = 1e7;
tic
y_loop = zeros(1,N);
for i = 1:N
	y_loop(i) = exp(-i/1e6) * sin(2*pi*i/1e6);
end
time_loop = toc;
disp(['루프 방식 소요 시간: ', num2str(time_loop), '초']);

% [2] 벡터화 방식
i = 1:N;
tic
y_vec = exp(-i/1e6) .* sin(2*pi*i/1e6);
time_vec = toc;
disp(['벡터화 방식 소요 시간: ', num2str(time_vec), '초']);

% 속도 향상 배수
disp(['속도 향상 배수: ', num2str(time_loop/time_vec)]);