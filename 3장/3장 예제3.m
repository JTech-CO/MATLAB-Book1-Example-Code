v = [-2.7, -1.5, 0, 1.2, 4];

disp('sqrt(v):'), disp(sqrt(v)) % 1) 제곱근
disp('abs(v):'), disp(abs(v)) % 2) 절댓값
disp('exp(v):'), disp(exp(v)) % 3) 지수 함수
disp('log(v):'), disp(log(v)) % 4) 자연로그
disp('log10(v):'), disp(log10(v)) % 5) 상용로그

x = 7; y = 3; % 6) 나머지 연산 (mod, rem 비교)
disp(['mod(7,3)=', num2str(mod(x,y)), ', rem(-7,3)=', num2str(rem(-7,y))])

w = [1.2, 1.5, 1.8]; % 7~9) 반올림 계열
disp('round(w):'), disp(round(w))
disp('floor(w):'), disp(floor(w))
disp('ceil(w):'), disp(ceil(w))