# Oncology_Model.mlx Script Explanation

This document explains the 'Oncology_Model' MATLAB script used to solve a system of ordinary differential equations. The explanation covers initialization, parameter definitions, solving the ODE system with ode45, and visualizing the results.

## Initialization

At the start of the script, the following commands are used:

```matlab
clc; clear; close all;
```

These commands ensure the script run in a clean enviorement without interference from previous sesssions.

## Define Parameters

```matlab
a1 = 0.5;  
b = 0.02;  
a2 = 0.1;  
alpha1 = 0.05; 
r1 = 0.02; 
r2 = 0.1;  
I0 = 1.0;  
h = 10;    
mu = 0.1;  
beta1 = 0.03; 
c = 0.6;   
d = 0.02;  
alpha2 = 0.04; 
beta2 = 0.02;
```

These parameters are constants used to model the dynamics of the system of equations. They were derived from the literature to accurately represent a preliminary system.

## Initial Conditions 

```matlab
N0 = 10;
L0 = 5;
T0 = 2;
y0 = [N0; L0; T0];
```

N₀, L₀, and T₀ are the starting values for the three variables in the system.  
y₀ is the vector that combines these values.  

In the model:  
- y(1) corresponds to **N**,  
- y(2) corresponds to **L**,  
- y(3) corresponds to **T**.  

