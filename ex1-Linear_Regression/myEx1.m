fprintf('Plotting data...\n');
data = load('ex1data1.txt');
x = data(:,1);
y = data(:,2);
m = length(y);

figure;
plot(x, y, 'rx');
xlabel('Population of City in 10,000');
ylabel('Profit in $1,000');

fprintf('Press any key to continue...\n');

%% Gradient Descent
% Add a colunm of ones to x
x = [ones(m,1), x];
% Initialize parameters to zeros
thetas = zeros(2,1);

% Some gradient descent settings
numIterations = 1500;
alpha = 0.001;
%%

[theta1, Js1] = myGradientDescent(x, y, thetas, 0.01, 15000);
[theta2, Js2] = myGradientDescent(x, y, thetas, 0.001, 1500);
[theta3, Js3] = myGradientDescent(x, y, thetas, 0.1, 1500);
figure;
plot(Js1,'-');
figure;
plot(Js2,'-');
figure;
plot(Js3,'-');
%% hold on;
plot(x(:,2), x*theta, '.');

for
