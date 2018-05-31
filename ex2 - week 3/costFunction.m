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

% --- single component preliminary version ---
%zi = X(i,:)*theta;
%hi = sigmoid(zi);
%Ji = ( -y(i)*log(hi) - (1-y(i))*log(1-hi) )/m;

%dtji = ( (hi-y(i))*X(i,j) )/m;

% --- vectorized version ---
z = X*theta;     % (m x 1)
h = sigmoid(z);  % (m x 1)
J = ( -y'*log(h) - (1-y)'*log(1-h) )/m;  % (1 x 1)

grad = ( X'*(h - y) )/m;  % (n+1 x 1)

% =============================================================

end