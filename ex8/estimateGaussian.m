function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%
for i = 1:n
	mu(i,:)= (1/m)*sum(X(:,i));
	%sigma2_temp= 0;
	%sigma2 = 0;
	%for j=1:m
	%	temp(j) = (X(j,i)-mu(i)).^2;
	%	sigma2_temp = sigma2_temp + temp(j);
	%X(:,i)-mu(i,:)
	sigma2(i,:) = (1/m)*sum((X(:,i)-mu(i,:)).^2);
		%keyboard()
	%end
	%sigma2(i,:)= (1/m)*sigma2_temp;
	%%keyboard()
end






% =============================================================


end