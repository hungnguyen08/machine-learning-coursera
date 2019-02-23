function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z)); % z = [1 2 3] then g = [ 0 0 0]

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

%X = data(:, [1, 2]); y = data(:, 3);

%for i = 1: 
%g = g + ones(1)/ (ones(1)+ e.^(-z) ) % element-wise

g = 1 ./ ( 1 .+ exp (-z) ) ;


% =============================================================

end
