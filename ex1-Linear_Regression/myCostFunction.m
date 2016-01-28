function [J, grad] = myCostFunction(X, Y, theta)

m = length(Y);

% make sure theta is a column vector
if size(theta, 1) == 1 && size(theta,2) ~= 1,
    theta = theta';
end

J = mean((X*theta- Y).^2)/2;

grad = 1/m * (X*theta-Y)' * X;

grad = grad';

end