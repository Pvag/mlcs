function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
nt = size(theta, 1);
am = alpha/m;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    temp = X*theta - y;
    temp = temp';
    % TODO Try to vectorize this!
    for j = 1 : nt
      tt = temp*X(:,j);
      theta(j) = theta(j) - tt*am;
    end
    
    
%    theta(1) = theta(1) - (temp*X(:,1))*am;
%    theta(2) = theta(2) - (temp*X(:,2))*am;
%    theta(3) = theta(3) - (temp*X(:,3))*am;
%    keyboard

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end