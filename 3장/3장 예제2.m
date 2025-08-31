x = [1 2 3]; y = [4; 5; 6];

dotProd = x * y; % 벡터 내적
disp('x * y ='), disp(dotProd)

x2 = [1 2 3]; y2 = [4 5 6]; % 요소별 곱
elemProd = x2 .* y2;
disp('x2 .* y2 ='), disp(elemProd)