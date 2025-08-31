% 파일명: newton_fill.m
function [root, iter] = newton_fill(f, df, x0, tol, maxIter)
	x = x0; % 초기값 설정
	for k = 1: ___(1)___ % 반복 시작
		dx = ___(2)___; % 변화량 계산
		x = x - dx; % 갱신

		if abs(___(3)___) < tol % 수렴 판정
			break;
		end
	end
	root = x;
	iter = k;
end