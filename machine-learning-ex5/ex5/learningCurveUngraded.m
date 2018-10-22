function [error_train, error_val] = ...
    learningCurveUngraded(X, y, Xval, yval, lambda)
    %% ����������ҵ����ungraded����ʹ�ã������ѡ��i��exampleȻ���ظ�50��
    %% �ڼ���ƽ��ֵ��Ϊ���յ�error

m = size(X, 1);

error_train = zeros(m, 1);
error_val   = zeros(m, 1);


num_iterations = 50;
for i = 1:m
  for j = 1:num_iterations
    sel = randperm(m);
    sel = (1:i);
    dataX = X(sel, :);
    dataY = y(sel, :);
    theta = trainLinearReg(dataX, dataY, lambda);
    [J1 grad1] = linearRegCostFunction(dataX, dataY, theta, 0);
    error_train(i) = error_train(i) + J1;
    [J2 grad2] = linearRegCostFunction(Xval, yval, theta, 0);
    error_val(i) = error_val(i) + J2;
  endfor  
  
  error_train(i) = error_train(i) / num_iterations;
  error_val(i) = error_val(i) / num_iterations;
  
endfor


% -------------------------------------------------------------

% =========================================================================

end
