% first_script.m
x = 0:pi/4:2*pi; % 0부터 2π까지 π/4 간격으로 벡터 생성
y = sin(x); % y = sin(x) 계산
plot(x, y, 'o-') % 원형 마커와 실선으로 그래프 그리기
xlabel('x (rad)') % x축 레이블
ylabel('sin(x)') % y축 레이블
title('Plot of y = sin(x)') % 제목