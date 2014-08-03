% in the function predict.m, at last

%!shared X, Theta1, Theta2, pred, y_value, m, n
%! #        load data; X(5000,400), y(5000,1)
load('ex3data1.mat');
%! #        load weights matrix; Theta1(25,401), Theta2(10,26)
load('ex3weights.mat');
%! #        Then a2 has 25 units and a3 has 10 units
%! m = size(Theta1, 1);
%! n = size(Theta2, 1);
%!test assert(m, 25);
%!test assert(n, 10);
%! #        we select the interval of  rows 1440:1445 and predict the value of y
pred = predict(Theta1, Theta2, X(1440:1445, :));
y_value = [2; 1; 2; 2; 2; 2];
%!test assert (pred, y_value);
pred==y_value
%! #        we select the interval of  rows 2500:2505 and predict the value of y
pred = predict(Theta1, Theta2, X(2500:2505, :));
y_value = [4; 5; 5; 5; 5; 5];
%!test assert (pred, y_value);
pred==y_value