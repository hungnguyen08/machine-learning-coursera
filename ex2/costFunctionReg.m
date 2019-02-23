function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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


%lambda = 1;

% Compute and display initial cost and gradient for regularized logistic
% regression
%[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);

%X
%size(X)

h = sigmoid(X*theta);
theta(1) = 0;
J = -1/m * ( (log(h))' * y + (log (ones(m,1)-h))' * (ones(m,1) - y))+ lambda/(2*m)* sum(theta .* theta);


%%%%gradient
%h = sigmoid(X*theta);
%grad(1) =  1/m * X(:,1)'*(h-y);

theta(1) = 0;
%1/m * X'*(h-y)
%sum(theta)
grad = grad + 1/m * (X'*(h-y))+ lambda/m * theta;



% =============================================================

end