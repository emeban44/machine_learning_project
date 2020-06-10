

%% initialize
clear; close all; clc;
%% load the data
training = load('training.txt');
x = training(:, [6,10]);
y = training(:, 11);
coef = generateCoefficient (training);

%% plot the data
plotData(coef,y);
legend('Home Win', 'Away Win');
xlabel('Home Team Coefficient');
ylabel('Away Team Coefficient');

%% compute the cost and gradient
[m,n] = size(coef);
initialTheta = zeros((n+1), 1);
[J, grad] = computeCost(initialTheta, coef, y);

%% run the function optimization algorithm
options = optimset('GradObj', 'on', 'MaxIter', 400);
theta = fminunc(@(t)computeCost(t, coef, y), initialTheta, options);

%% check the accuracy of predictions
predictions=predict (theta, coef);
accuracy = mean( double(predictions == y) *100);
