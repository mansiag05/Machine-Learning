function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    theta_1=0;
    theta_2=0;
    theta = theta';
    X = X';
    for i=1:m
      temp = ((theta * X(:,i)) - y(i));
      theta_1 = theta_1 + temp;
      theta_2 = theta_2 + (temp * X(2,i));
    end

    theta(1,1) = theta(1,1) - (alpha * (1/m) * theta_1);
    theta(1,2) = theta(1,2) - (alpha * (1/m) * theta_2);

    X=X';
    theta=theta';
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
