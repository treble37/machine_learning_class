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

%size(h_theta) %= 118 x 1
%size(X) %= 118 x 28
%size(y) %= 118 x 1
%size(theta) %= 28 x 1
%size(grad) %= 28 x 1

  h_theta = 1./(1+exp(-X*theta));
  J = (1/m) * sum(-y.*log(h_theta) - (1-y).*(log(1-h_theta))) + lambda/(2*m)*sum(theta(2:end).^2);
  grad =  (1/m)*X'*(h_theta-y);
  grad(2:end) = grad(2:end) + lambda/m*theta(2:end);
  theta = theta - grad;



% =============================================================

end
