# Oncology_Model.mlx Script Outline

This document explains the `Oncology_Model.mlx` MATLAB script used to solve a system of ordinary differential equations. The explanation covers initialization, parameter definitions, solving the ODE system with `ode45`, and visualizing the results.

## Initialization

At the start of the script, the following commands are used:

```matlab
clc; clear; close all;
```

These commands ensure the script runs in a clean environment without interference from previous sessions.

## Define Parameters

```matlab
a1 = 0.043;  
b = 8e-10;  
a2 = 0.069;  
alpha1 = 2.794e-13; 
r1 = 2.9077e-11; 
r2 = 5.8467e-13;  
I0 = 1.0;  
h = 1.3332;    
mu = 9e-3;  
beta1 = 3.422e-10; 
c = 0.36;   
d =1;  
alpha2 = 2.9077e-13; 
beta2 = 2.9077e-11;  
```

These parameters are constants used to model the dynamics of the system of equations. They were derived from the literature to accurately represent a preliminary system.

LIST CITATIONS HERE

## Initial Conditions 

```matlab
N0 = 10;
L0 = 5;
T0 = 2;
y0 = [N0; L0; T0];
```

`N₀`, `L₀`, and `T₀` are the starting values for the three variables in the system. `y₀` is the vector that combines these values. 

## Time Span

The simulated time interval is set by:

```matlab
tspan = [0 100];
```

This explicitly changes the time term in our model and can be varied depending on the biological question being asked.

## Solving the ODE System Using MATLAB's Integrated `ode45`

The ODE system is solved using MATLAB's `ode45` function:

```matlab
[t, y] = ode45(@(t, y) systemODEs(t, y, a1, b, a2, alpha1, r1, r2, I0, h, mu, beta1, c, d, alpha2, beta2), tspan, y0);
```

`ode45` is a variable-step Runge-Kutta solver embedded in MATLAB. The anonymous function `@(t, y) systemODEs(...)` calls an external function `systemODEs` with the current time, state, and model parameters.

When manually selecting a solver, `ode45` is often the best first choice for most systems.  
The `ode45` solver uses an explicit **Runge-Kutta (4,5) formula**, also known as the **Dormand-Prince pair**, for numerical integration.

References to official MATLAB documentation:  
- [MATLAB `ode45` Function](https://www.mathworks.com/help/matlab/ref/ode45.html?searchHighlight=ode45&s_tid=srchtitle_support_results_1_ode45)  

- `[t, y]`:  
  - `t` is a vector of time points where the solution was evaluated.  
  - `y` is a matrix where each row corresponds to a time point, and each column corresponds to one of the variables.

## Extracting Solutions from `ode45`

After solving, the solution matrix `y` is split into individual vectors for each variable:

```matlab
N = y(:,1);
L = y(:,2);
T = y(:,3);
```

Each vector (`N`, `L`, and `T`) represents the time evolution of a specific variable.

## Confirmation of the System of Ordinary Differential Equations 

A figure is created to display the system of equations using LaTeX formatting. The equations are defined as LaTeX strings and rendered on the figure with the `text` function.

#### Script snippet for displaying one of the equations:

```matlab
eq1 = '$\frac{dN(t)}{dt} = a_1 N(t)(1 - bN(t)) - a_2 N(t) - \alpha_1 N(t) T(t)$';
text(0.1, 0.8, eq1, 'Interpreter', 'latex', 'FontSize', 14);
```

## Visualization Using Plots

The script creates several subplots to visualize the evolution of each variable over time:

- **Subplots**: Three subplots are used, one for each variable (`N`, `L`, `T`).  

```matlab
subplot(3,1,1);
plot(t, N, 'Color', [0, 0.7, 0.7], 'LineWidth', 2); 
xlabel('Time'); ylabel('N(t)', 'Rotation', 0, 'HorizontalAlignment', 'right');
title('Dynamics of N(t)');
grid on;
```

## ODE Functions 

```matlab
function dydt = systemODEs(t, y, a1, b, a2, alpha1, r1, r2, I0, h, mu, beta1, c, d, alpha2, beta2)
    N = y(1);
    L = y(2);
    T = y(3);
    
    dNdt = a1 * N * (1 - b * N) - a2 * N - alpha1 * N * T;
    dLdt = r1 * N * T + r2 * I0 * 2^(-t / h) - mu * L - beta1 * L * T;
    dTdt = c * T * (1 - d * T) - alpha2 * N * T - beta2 * L * T;
    
    dydt = [dNdt; dLdt; dTdt];
end
```

- **Extracting Variables**: The vector `y` is split into `N`, `L`, and `T`.  
- **Defining Equations**:  
  - `dNdt` represents the rate of change of `N`, including logistic growth and interaction terms.  
  - `dLdt` includes interaction between `N` and `T`, a time-dependent decay term, and loss terms.  
  - `dTdt` models the dynamics of `T` with logistic behavior and interactions.  
- **Output**: The derivatives are returned as a column vector `dydt` for use by `ode45`.

## Overview (NEEDS MORE DETAIL)

- **Initialization**: Clears the workspace.  
- **Define Parameters**: Defines constants and starting values.  
- **ODE Solution Extraction**: Uses `ode45` to solve the system of ODEs.  
- **Visualization**: Displays both the mathematical equations (using LaTeX) and the dynamic behavior of the system through plots.  
