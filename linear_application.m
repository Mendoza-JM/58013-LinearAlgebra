% Define the equations
syms x y
eq1 = 20*x + 10*y == 350;
eq2 = 17*x + 22*y == 500;

% Solve the system
sol = solve([eq1, eq2], [x, y]);

% Extract numerical values from the solution
sol_x = double(sol.x);
sol_y = double(sol.y);

% Create a range of x values for plotting
x_values = linspace(min(sol_x), max(sol_x), 100);

% Plot the first equation: 20*x + 10*y == 350
y_eq1 = (350 - 20*x_values) / 10;
plot(x_values, y_eq1, 'r', 'LineWidth', 2);
hold on;

% Plot the second equation: 17*x + 22*y == 500
y_eq2 = (500 - 17*x_values) / 22;
plot(x_values, y_eq2, 'b', 'LineWidth', 2);

% Mark the solution point
scatter(sol_x, sol_y, 100, 'g', 'filled');

% Set labels and title
xlabel('x');
ylabel('y');
title('System of Linear Equations');

% Add a legend
legend('20*x + 10*y = 350', '17*x + 22*y = 500', 'Solution');

% Show the grid
grid on;

% Display the plot
hold on;