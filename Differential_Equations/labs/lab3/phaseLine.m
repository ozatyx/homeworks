function phaseLine(f, ymin, ymax)
% function phaseLine(f, ymin, ymax)
% 
% This function draws a representation of the phaseline for the
% differential equation dy/dt = f(y). The graph is drawn from ymin to ymax,
% and looks for solutions to f(y) = 0 in that region to find equilibrium
% solutions. This requires the Optimization Toolbox fsolve to run
% correctly.

opt = optimset('Display', 'off');
[possSols, ~, flag] = fsolve(@(s) f(s), linspace(ymin, ymax, 100), opt);
eqSols = [];
if flag >= 0
   eqSols = uniquetol(possSols, 0.05);
end

dy = (ymax-ymin)/100;

hold on;
for yv = ymin:dy:ymax
    if f(yv) > 0
        plot([-1,1], [yv, yv], 'b-', 'LineWidth', 4);
    end
    if f(yv) < 0
        plot([-1,1], [yv,yv], 'r-', 'LineWidth', 4);
    end
end

for eqct=1:length(eqSols)
    plot([-1,1], [eqSols(eqct), eqSols(eqct)], 'k-', 'LineWidth', 3);
end

hold off;

end