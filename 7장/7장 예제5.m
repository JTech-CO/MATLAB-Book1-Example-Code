% 루프와 벡터화

N = 1e7;

% 루프 방식
tic
S = 0;
for k = 1:N
	S = S + k^2;
end
t_loop = toc;

% 벡터화 방식
tic
k = 1:N;
S2 = sum(k.^2);
t_vec = toc;

% 소요 시간
fprintf('루프 방식: %.3f s\n', t_loop);
fprintf('벡터화 방식: %.3f s\n', t_vec);