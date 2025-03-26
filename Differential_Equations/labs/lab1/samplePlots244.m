function samplePlots244(f, t_min, t_max, y_min, y_max, t_0, y_0, col)
% function samplePlots244(f, t_min, t_max, y_min, y_max, t_0, y_0, col)
% 
% This function takes the ODE dy/dt = f(t,y) and plots sample solutions
% with initial value (t_0, y_0). It uses ode45 to sketch out the solutions.
% t_0 must be between t_min and t_max. It also truncates the function f so
% that functions will not go off to infinity, causing this to work properly
% on vector inputs for initial conditions in y. The input y_0 can be a vector 
% of initial values, and this function will plot a curve
% for each of those values. If using a vector of initial
% conditions, the function must be written with vector element-wise
% operations.
%

f_old = f;
f_new = @(t,y) f_old(t,y).*(max(abs(y)) < 10000000);
t_right = t_0;
t_left = t_0;

L = length(y_0);
hold on;
for ind = 1:L
y_right = y_0(ind);
y_left = y_0(ind);

if t_max > t_0
[t_right, y_right] = ode45(f_new, [t_0, t_max], y_0(ind));
end
if t_min < t_0
[t_left, y_left] = ode45(f_new, [t_0, t_min], y_0(ind));
end


t_sol = [flip(t_left); t_right];
    y_sol = [flip(y_left); y_right];  
    plot(t_sol, y_sol, col);
end
axis([t_min, t_max, y_min, y_max]);
hold off;


