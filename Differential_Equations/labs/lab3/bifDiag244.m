function bifDiag244(f, a_min, a_max, y_min, y_max)
% function bifDiag244(f, a_min, a_max, y_min, y_max)
% 
% This function draws a bifurcation diagram for the ode dy/dt = f(alpha, y)
% with parameter alpha running from a_min to a_max. The axes are
% constrained to be from a_min to a_max in the horizontal direction and
% y_min to y_max in the vertical direction.
%
% The black marks are for equilibrium solutions, the blue regions are where
% the solution will tend upwards, and the red region is where it will tend
% downwards.

NLines = 50;
da = (a_max - a_min)/NLines;
dy = (y_max-y_min)/NLines;

opt = optimset('Display', 'off');

% figure(fNum);
hold on;
for a_test = a_min:da:a_max
    [possSols, ~, flag] = fsolve(@(s) f(a_test, s), linspace(y_min, y_max, 25), opt);
    eqSols = [];
    if flag >= 0
        eqSols = uniquetol(possSols, 0.05);
    end
    for y_test = y_min:dy:y_max
        if f(a_test, y_test) > 0
            plot(a_test, y_test, 'b.', 'MarkerSize', 8);
        elseif f(a_test, y_test) < 0
            plot(a_test, y_test, 'r.', 'MarkerSize', 8);
        end
    end
    for solT = 1:length(eqSols)
        plot(a_test, eqSols(solT), 'k.', 'MarkerSize', 8);
    end
end
hold off;
