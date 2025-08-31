% 상삼각 행렬을 사용한 linsolve 옵션 활용 부분
R = triu(A); % 상삼각 행렬
opts.UT = true;
tic; x_tri = linsolve(R,b,opts);
t_tri = toc; fprintf('삼각행렬 linsolve: %6.3f초\n', t_tri);