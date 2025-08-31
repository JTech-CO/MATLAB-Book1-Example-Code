M = magic(5); % 5×5 마방진 행렬

disp('원본 M:'), disp(M)

subM = M(2:4, 3:5); % 2~4행, 3~5열의 부분 행렬
disp('M(2:4,3:5):'), disp(subM)

row1 = M(1, :); % 1행 전체
disp('M(1,:):'), disp(row1)

col5 = M(:, 5); % 5열 전체
disp('M(:,5):'), disp(col5)

diagElems = diag(M); % 대각선 요소 (1,1),(2,2),...(5,5)
disp('diag(M):'), disp(diagElems)