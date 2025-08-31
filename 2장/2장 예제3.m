v = [10 20 30 40 50 60 70]; % 1차원 행 벡터

disp('전체 v:'), disp(v) % 전체 요소 출력
disp('v(2:5):'), disp(v(2:5)) % 2~5번째 요소
disp('v(1:2:end):'), disp(v(1:2:end)) % 홀수 번째 요소 (1,3,5,...)
disp('v(end-1):'), disp(v(end-1)) % 끝에서 두 번째 요소

col = v(:); % 열 벡터로 변환
disp('v(:) →'), disp(col)