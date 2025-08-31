% 예제 시스템 생성 부분
n = 1000;
A = randn(n);
A = A’*A + eye(n); % 대칭 양정치 행렬
b = randn(n,1);

% inv vs linsolve vs backslash 속도 비교 부분
tic; x_inv = inv(A)*b; t_inv = toc;
tic; x_ls = linsolve(A,b); t_ls = toc;
tic; x_bs = invA\b; t_bs = toc;

fprintf(’inv 방식: %6.3f초\n’, t_inv);
fprintf(’linsolve 방식: %6.3f초\n’, t_ls);
fprintf(’backslash 방식: %6.3f초\n’, t_bs);

% 정확도 비교 (잔차 norm 확인) 부분
r_inv = norm(A*x_inv - b);
r_ls= norm(A*x_ls- b);
r_bs = norm(A*x_bs- b);

fprintf(’inv 잔차: %.2e\n’, r_inv);
fprintf(’linsolve 잔차: %.2e\n’, r_ls);
fprintf(’backslash 잔차: %.2e\n’, r_bs);