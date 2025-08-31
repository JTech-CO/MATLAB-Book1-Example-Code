% 1단계: 디버깅 대상 코드 작성 및 오류 의심

% sumEven.m
% 1부터 N까지의 짝수 합을 구하는 코드
N = 10;
total = 0;
for k = 1:N
	if mod(k,2) == 1 % 홀수일 때 더함 → 논리 오류
		total = total + k;
	end
end
fprintf('1부터 %d까지 짝수의 합: %d\n', N, total);

% 2단계: 디버거 시작 - 중단점 설정 및 한 줄씩 실행

% 디버깅용 중단점 설정: for 루프 시작 줄
% MATLAB 편집기 좌측 클릭 or F12
dbstop in sumEven at 5 % 또는 편집기에서 수동 중단점 설정
sumEven % 코드 실행 → 중단점에서 정지 (한 줄씩 실행)
dbstep % k=1부터 루프 실행 시작

% 3단계: 변수 상태 확인 및 오류 형식

% 실행 중간에 변수 확인
disp(k)
disp(mod(k,2))
disp(total)

% 4단계: 코드 수정 및 재실행

% 조건 수정: 짝수일 때만 더하도록 변경
N = 10;
total = 0;
for k = 1:N
	if mod(k,2) == 0 % 짝수 조건으로 수정
		total = total + k;
	end
end
fprintf('1부터 %d까지 짝수의 합: %d\n', N, total);