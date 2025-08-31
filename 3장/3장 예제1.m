A = [1 2; 3 4]; B = [5 6; 7 8];

M = A * B; % 행렬 곱
disp('A * B ='); disp(M)

E = A .* B; % 요소별 곱
disp('A .* B ='); disp(E)