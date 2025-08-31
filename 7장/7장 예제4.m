% 프리할당과 동적할당

N = 1e6;

% 동적 할당 (비추천)
tic
A = [];
for i = 1:N
	A(i) = sin(i); % 매번 A 크기가 늘어남
end
t_dyn = toc;
mem_dyn = whos('A');

% 프리할당 (추천)
tic
B = zeros(1, N); % 한 번에 메모리 확보 가능
for i = 1:N
	B(i) = sin(i);
end
t_pre = toc;
mem_pre = whos('B');

% 소요 시간 및 메모리
fprintf('동적할당: %.3f s, %.1f KB\n', t_dyn, mem_dyn.bytes/1024);
fprintf('프리할당: %.3f s, %.1f KB\n', t_pre, mem_pre.bytes/1024);