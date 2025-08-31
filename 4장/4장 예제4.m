rng(0); % 재현 가능성
height = 150 + 30*randn(100,1); % 평균 150cm, σ=30
weight = 50 + 12*randn(100,1); % 평균 50kg, σ=12

figure
scatter(height, weight, 50, 'filled')
xlabel('키 (cm)')
ylabel('몸무게 (kg)')
title('키 vs 몸무게 분포')
grid on