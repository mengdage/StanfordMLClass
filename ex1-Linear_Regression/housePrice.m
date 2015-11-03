clc;clear;close all;
%%

GDP = [19385.13 26618.87 30998.04 34773.28 42093.8 47620.13 56115.6 66156.32 82762.21 90746.91]';
price = [2747.48 3593.7 4000.92 5104.94 4788 5383 6421 7166.19 7583.36 7987]';
area = [446.48 825.82 645.02 769.73 686.22 1151.15 1209.87 919.49 842.5 1050.61]';
investment = [96.65 130.16 151.73 182.17 214.88 247.88 357.27 447.90 595 668.12]';
income = [11089 12920 15328 17856 20464 22368 24998 28567 32145 35227]';
tbl = table(GDP, income, area, investment, price);

%%
figure;
plot(GDP, price);
title('Price vs GDP');
xlabel('GDP');
ylabel('Price');

modelspec1 = 'price~GDP';
lm1 = fitlm(tbl, modelspec1);

figure;
plot(lm1)
%price = 1910.4 + 0.07*GDP
lm1

%%

figure;
scatter(income, price);
title('Price vs income');
xlabel('income');
ylabel('Price');


modelspec2 = 'price~income';
lm2 = fitlm(tbl, modelspec2);

figure;
plot(lm2)
%price = 736.57+0.21*income
lm2
%%

figure;
scatter(area, price);
title('Price vs area');
xlabel('area');
ylabel('Price');

modelspec3 = 'price~area';
lm3 = fitlm(tbl, modelspec3);

figure;
plot(lm3)
%price = 1221.6+4.98*area
lm3
%%

figure;
scatter(investment, price);
title('Price vs investment');
xlabel('investment');
ylabel('Price');

modelspec4 = 'price~investment';
lm4 = fitlm(tbl, modelspec4);

figure;
plot(lm4)
%price = 2878.6+8.4*investment
lm4
%%

modelspec5 = 'price~GDP+income+area+investment';
lm5 = fitlm(tbl, modelspec5);
%price = 158.3 + -0.13*GDP + 0.40*income + 0.73*area + 7.53*investment
lm5