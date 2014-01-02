function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

    % Initialize some useful values
    m = length(y); % number of training examples

    J = sum ((X * theta - y) .^2) / (2 * m);    % Cost Function
    % or J = mean((X * theta - y) .^2) / 2
    % or J = (X * theta - y)' * (X * theta - y) / (2 * m);

end
