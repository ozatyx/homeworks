xVals = linspace(0, 3, 1000);

% Define the functions f and g
f = @(x) sin(x);
g = @(x) x - 1;

% Plot the graph of f
figure();
plot(xVals, f(xVals), "b")
title("f(x)");
xlabel("x");
ylabel("f(x)");

% Plot the graph of g


% Plot the graph of f and g together