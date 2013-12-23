function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression using the normal equations.

    theta = zeros(size(X, 2), 1); %#ok<NASGU>

    theta = pinv( X' * X ) * X' * y;

end
