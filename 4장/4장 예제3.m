categories = {'A','B','C','D','E'};
sales = [120, 150, 90, 200, 170];

figure
bar(sales)
set(gca, 'XTickLabel', categories)
xlabel('제품군')
ylabel('판매량')
title('제품군별 주간 판매량')
grid on