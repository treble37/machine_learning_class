function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;

C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%C_list = [0.01 0.03 0.1 0.3 1 3 10 30];
%sigma_list = [0.01 0.03 0.1 0.3 1 3 10 30];
%error_min = flintmax("single");
%optimal_C = C_list(1);
%optimal_sigma = sigma_list(1);
%for i=1:length(C_list)
%  for j=1:length(sigma_list)
%    model= svmTrain(X, y, C_list(i), @(x1, x2) gaussianKernel(x1, x2, sigma_list(j))); 
%    predictions = svmPredict(model, Xval);
%    error = mean(double(predictions ~= yval));
%    if error<error_min
%      error_min = error
%      optimal_C = C_list(i)
%      optimal_sigma = sigma_list(j)
%    end
%  end
%end

%C=optimal_C
%sigma = optimal_sigma


% =========================================================================

end
