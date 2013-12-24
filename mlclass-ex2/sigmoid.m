function g = sigmoid(z)
%	Compute sigmoid function

    % You need to return the following variables correctly
    g = zeros(size(z)); %#ok<NASGU>

    % Instructions: z can be a matrix, vector or scalar

    g = 1 ./ ( 1 + exp(1).^(-z)); % For Matlab
    %g = 1 ./ ( 1 + e.^(-z)); % For Octave, it can use 'exp(1)' or 'e'
    
end
