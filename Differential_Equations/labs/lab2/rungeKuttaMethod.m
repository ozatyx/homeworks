function [t, y] = rungeKuttaMethod(f, dt, Tf, T0, y0)
% function [t, y] = rungeKuttaMethod(f, dt, Tf, T0, y0)
% 
% This method solves the ODE dy/dt = f(t, y) using the Runge Kutta method
% from t=T0 to t = Tf with time step dt and initial condition y0 at t = T0.
% In this case, f should be a function of two variables, t
% (time) and y.

if T0 > Tf
    temp = T0;
    T0 = Tf;
    Tf = temp;
end

numStep = ceil((Tf - T0)/dt);

h = (Tf - T0)/numStep;

t = zeros(1, numStep+1);
y = zeros(1, numStep+1);

t(1) = T0;
y(1) = y0;

for ind = 1:numStep
    k1 = f(t(ind), y(ind));
    k2 = f(t(ind) + h/2, y(ind) + h*k1/2);
    k3 = f(t(ind) + h/2, y(ind) + h*k2/2);
    k4 = f(t(ind) + h, y(ind) + h*k3);
    t(ind+1) = t(ind) + h;
    y(ind+1) = y(ind) + (1/6)*h*(k1 + 2*k2 + 2*k3 + k4);
end

end