function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%X = data(:, [1, 2]); y = data(:, 3);
% Initialize fitting parameters
%initial_theta = zeros(n + 1, 1);

% Compute and display initial cost and gradient
%[cost, grad] = costFunction(initial_theta, X, y);


%X*theta
%R = y' * (log (X*theta));

%
%size(h)
%
%R=(sum( (log (X'*h) * y' )))'
%size(R)

%J = -1 / m * ( (sum( (log (X'*h) * y' )))' 
%+ sum( (ones(m,1) - y)' * (log ( ones(m,1) - X*h))) ) ;

%J = -1 / m * ( (sum( (log (X'*h) * y' )))' + (sum( (log ( ones(n+1,1) - X'*h)) * (ones(m,1) - y)' ) )') ;

%J = -1/m * (sum( (log(h))' * y) + sum((log (ones(m,1)-h))' * (ones(m,1) - y) ))
h = sigmoid(X*theta);
J = -1/m * ( (log(h))' * y + (log (ones(m,1)-h))' * (ones(m,1) - y));
grad = 1/m * X'*(h-y);




% =============================================================

end
