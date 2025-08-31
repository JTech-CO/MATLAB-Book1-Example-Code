% 파일명: interp_fill.m
X = [0 0.3 0.7 1.4 1.8 2.0];
Y = sin(X) + 0.1*randn(size(X));
Xq = ___(1)___(0, 2, 200);
Y_lin = interp1(X, Y, Xq, '___(2)___'); % 선형 보간
Y_spl = interp1(X, Y, Xq, '___(3)___'); % 스플라인 보간
plot(X, Y, 'ko','MarkerFaceColor','y'); hold on % 그래프
plot(Xq, Y_lin, '-b'); plot(Xq, Y_spl, '--r');
legend('원본','선형','스플라인');