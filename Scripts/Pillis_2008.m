% Pillis 2008 %

clc; clear; close all;

% Solve the system of ODEs %

% Define parameter values %
a1 = 1.11e-1;  
b = 1.02e-9;  
a2 = 1.25e-2;  
alpha1 = 2.794e-13; 
r1 = 2.9077e-11; 
r2 = 5.8467e-13;  
I0 = 1.0;  
h = 0.173;    
mu = 9e-3;  
beta1 = 3.422e-10; 
c = 4.31e-1;   
d =1.02e-9;  
alpha2 = 2.9077e-13; 
beta2 = 1.245e-2;  

% Initial conditions %
N0 = 10;
L0 = 5;
T0 = 2;
y0 = [N0; L0; T0];

% Time span %
tspan = [0 100];

% Solve using ode45 %
[t, y] = ode45(@(t, y) systemODEs(t, y, a1, b, a2, alpha1, r1, r2, I0, h, mu, beta1, c, d, alpha2, beta2), tspan, y0);

% Extract solutions %
N = y(:,1);
L = y(:,2);
T = y(:,3);

% Confirmation of the System of Ordinary Differential Equations %
figure;
axis off;

eq1 = '$\frac{dN(t)}{dt} = a_1 N(t)(1 - bN(t)) - a_2 N(t) - \alpha_1 N(t) T(t)$';
eq2 = '$\frac{dL(t)}{dt} = r_1 N(t) T(t) + r_2 I_0 2^{-\frac{t}{h}} - \mu L(t) - \beta_1 L(t) T(t)$';
eq3 = '$\frac{dT(t)}{dt} = c T(t) (1 - d T(t)) - \alpha_2 N(t) T(t) - \beta_2 L(t) T(t)$';

text(0.1, 0.8, eq1, 'Interpreter', 'latex', 'FontSize', 14);
text(0.1, 0.6, eq2, 'Interpreter', 'latex', 'FontSize', 14);
text(0.1, 0.4, eq3, 'Interpreter', 'latex', 'FontSize', 14);

title('System of ODEs');

% Plot the results %

figure;
subplot(3,1,1);
plot(t, N, 'Color', [0, 0.7, 0.7], 'LineWidth', 2); 
xlabel('Time'); ylabel('N(t)', 'Rotation', 0, 'HorizontalAlignment', 'right');
title('Dynamics of N(t)');
grid on;

subplot(3,1,2);
plot(t, L, 'Color', [0, 0, 0.5], 'LineWidth', 2); 
xlabel('Time'); ylabel('L(t)', 'Rotation', 0, 'HorizontalAlignment', 'right');
title('Dynamics of L(t)');
grid on;

subplot(3,1,3);
plot(t, T, 'Color', [0.10 0.65 0.25], 'LineWidth', 2); 
xlabel('Time'); ylabel('T(t)', 'Rotation', 0, 'HorizontalAlignment', 'right');
title('Dynamics of T(t)');
grid on;

sgtitle('System of ODEs Solution using ode45');

% Plot the dynamics of all three variables in one figure with three curves

figure;
hold on;
plot(t, N, 'Color', [0, 0.7, 0.7], 'LineWidth', 2);  % N(t)
plot(t, L, 'Color', [0, 0, 0.5], 'LineWidth', 2);    % L(t)
plot(t, T, 'Color', [0.10 0.65 0.25], 'LineWidth', 2); % T(t)
hold off;

xlabel('Time');
ylabel('Population Levels');
title('Dynamics of N(t), L(t), and T(t) Over Time', 'FontWeight', 'normal');
legend('N(t)', 'L(t)', 'T(t)', 'Location', 'Best');
grid on;



%%
function dydt = systemODEs(t, y, a1, b, a2, alpha1, r1, r2, I0, h, mu, beta1, c, d, alpha2, beta2)
    N = y(1);
    L = y(2);
    T = y(3);
    
    dNdt = a1 * N * (1 - b * N) - a2 * N - alpha1 * N * T;
    dLdt = r1 * N * T + r2 * I0 * 2^(-t / h) - mu * L - beta1 * L * T;
    dTdt = c * T * (1 - d * T) - alpha2 * N * T - beta2 * L * T;
    
    dydt = [dNdt; dLdt; dTdt];
end