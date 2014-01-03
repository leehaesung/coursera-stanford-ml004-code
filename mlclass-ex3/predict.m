function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

    % Useful values
    m = size(X, 1);
    num_labels = size(Theta2, 1);

    % You need to return the following variables correctly 
    p = zeros(size(X, 1), 1);

    % compute hidden layer
    X = [ones(m,1) X];
    A = sigmoid(X * Theta1');
    
    % compute output layer
    A = [ones(m,1) A];
    h = sigmoid(A * Theta2');
    [value, p] = max(h,[],2);

end
