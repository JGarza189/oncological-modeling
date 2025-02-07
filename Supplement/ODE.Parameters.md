## System of ODEs: Parameters and Initial Conditions (WORK IN PROGRESS)

This section outlines the constants, initial conditions, and parameters used in the system of ordinary differential equations (ODEs) for modeling the interaction between populations $N$, $L$, and $T$.

## Initial Conditions
These are the initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: Initial population of NK cells $N$.
- **$L_0$ (Initial population of $L$)**: Initial population of CTL cells $L$.
- **$T_0$ (Initial population of $T$)**: Initial population of tumor cells $T$.

## Parameters
These constants define the rates and interactions within the system.

- **$a_1$ (Growth rate of $N$)**: Coefficient governing the growth rate of $N$.
- **$b$ (Density-dependent regulation for $N$)**: Density-dependent regulation for $N$ (e.g., logistic growth).
- **$a_2$ (Mortality rate of $N$)**: Mortality rate of species $N$.
- **$\alpha_1$ (Predation or interaction rate between $N$ and $T$)**: Rate at which $N$ affects $T$ (predation, competition, etc.).
- **$r_1$ (Growth rate of $L$ due to $N$ and $T$ interaction)**: Rate at which $L$ grows due to interaction with $N$ and $T$.
- **$r_2$ (Growth rate of $L$ from environmental input)**: Growth rate of $L$ from environmental resources (e.g., light, nutrients).
- **$I_0$ (Initial environmental input)**: Initial level of external environmental input (e.g., nutrient availability, light intensity).
- **$h$ (Decay rate for external input)**: Time scale for decay of external resources.
- **$\mu$ (Decay rate of $L$)**: Mortality rate of species $L$.
- **$\beta_1$ (Effect of $T$ on $L$'s growth)**: Impact of $T$ on the growth of $L$.
- **$c$ (Intrinsic growth rate of $T$)**: Intrinsic growth rate of species $T$.
- **$d$ (Density-dependent regulation for $T$)**: Density-dependent regulation for species $T$.
- **$\alpha_2$ (Predation or interaction rate between $N$ and $T$)**: Rate at which $N$ affects $T$ in the system.
- **$\beta_2$ (Effect of $L$ on $T$'s growth)**: Effect of $L$ on $T$'s growth.

