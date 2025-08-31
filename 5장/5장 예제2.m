f = @(x) sin(x) - 0.5; % 함수 f(x) = sin(x) - 0.5의 해 찾기

% (a) 구간을 알고 있을 때
z1 = fzero(f, [0 2]);
disp('구간 [0,2]에서 fzero로 찾은 해:'), disp(z1)

% (b) 초깃값만 줄 때
z2 = fzero(f, 2);
disp('초깃값 2로 fzero로 찾은 해:'), disp(z2)