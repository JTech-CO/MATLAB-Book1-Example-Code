a = randi(10,1); % 1~10 사이 정수 난수 하나 생성
if rem(a,2)==0
	disp([ '생성된 수 ', num2str(a), '는 짝수입니다.' ])
else
	disp([ '생성된 수 ', num2str(a), '는 홀수입니다.' ])