function [theta, J_hist] = myGradientDescent(X, Y, theta, alpha, iterations)
m = length(Y);
J_hist = zeros(iterations, 1);
for i = 1:iterations,
    %[J, grad] = myCostFunction(X, Y, theta);

    
    grad = X' * (X*theta - Y) / m;
    theta = theta - alpha * grad;
    
    J = myComputeCost(X, Y, theta);
    
    J_hist(i) = J;
end

end

