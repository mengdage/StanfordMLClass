function J = myComputeCost(X, Y, theta)
J = 0;
m = length(Y);
J = sum((X*theta-Y).^2)/2/m;
end