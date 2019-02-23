function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%J = computeCost(X, y, theta);

%h= X * theta;
%error = h - y 
	
%error_square
% size(X) == [97 2]
% size(y) == [97 1]
% size(theta) == [2 1]


J = 1/(2*m)*sum ((X * theta - y).^2);



%for i =1:m,
%	J = J+   (X(i,:) * theta - y(i))^2 ;
%end
%
%J = J / (2*m);

%for i =1:97, 
%		J = 1/2/m * sum( ((theta*X(i,:) - y(i) ).^2));
%i = i +1 ;



% =========================================================================

end
