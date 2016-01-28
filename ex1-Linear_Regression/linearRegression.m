%% initialization
clear; close all; clc;

%% read the data and show the data

data = load('ex1data2.txt');
X = data(:,1); Y = data(:,2);
m = length(Y);
% plot data
figure,plot(X, Y, 'rx', 'Markersize', 2);
ylabel('Profit in $10,000s');
xlabel('Population of city in 10,000');

%% 

% add the interception term
X = [ones(m,1), X];
%%
[theta,J_hist] = myLinearModel(X, Y);

hold on;
plot(X(:,2), X*theta, 'b.');
hold off;

figure, plot(J_hist);
