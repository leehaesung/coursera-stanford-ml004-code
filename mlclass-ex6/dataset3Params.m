function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

    % You need to return the following variables correctly.
    C = 1;
    sigma = 0.3;

% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))

    C_temp = 0;
    sigma_temp = 0;
    error_temp = 100000;

    steps = [0.01, 0.03, 0.1, 0.3, 1.0, 1.3, 10, 30];
    
    for C_step = steps
        for sigma_step = steps
            model = svmTrain(X, y, C_step, @(x1, x2) gaussianKernel(x1, x2, sigma_step));
            predictions = svmPredict(model, Xval);
            predict_error = mean(double(predictions ~= yval));
            if (predict_error <  error_temp)
                C_temp = C_step;
                sigma_temp = sigma_step;
                error_temp = predict_error;
            end
        end
    end
    C = C_temp
    sigma = sigma_temp
end
