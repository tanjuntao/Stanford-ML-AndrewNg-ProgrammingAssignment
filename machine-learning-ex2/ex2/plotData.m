function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% 可以自己使用for循环的方式，逐个判断每个标签
%m = length(y);
%for i = 1:m
%  if y(i) == 1
%    plot(X(i, 1), X(i, 2), 'k+', 'MarkerSize', 7, 'LineWidth', 2);
%    else
%      plot(X(i, 1), X(i, 2), 'ko', 'MarkerSize', 7, 'LineWidth', 2, 'MarkerFaceColor', 'y');
%  endif
  
%endfor

pos = find(y == 1);
neg = find(y == 0);

plot(X(pos, 1), X(pos, 2), 'k+', 'MarkerSize', 10, 'LineWidth', 2);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'y');






% =========================================================================



hold off;

end
