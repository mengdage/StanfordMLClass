function [theta, J_hist] = myLinearModel(X, Y)
alpha = 0.01;
iterations = 50;
[theta, J_hist] = myGradientDescent(X, Y, alpha, iterations);


end