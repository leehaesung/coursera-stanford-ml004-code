function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

    % Initialize some useful values
    m = length(y); % number of training examples

    % You need to return the following variables correctly 
    J = 0;
    grad = zeros(size(theta));

    % compute Cost Function
    J = mean((X * theta - y).^2) / 2 + sum(theta(2:end) .^2) * lambda / (2 * m);
    
    % compute Gradient
    theta_temp = theta;
    theta_temp(1) = 0;
    grad = (X' * (X * theta - y) ./ m) + theta_temp * lambda / m;

    grad = grad(:);

end
