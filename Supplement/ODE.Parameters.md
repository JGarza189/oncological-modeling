## System of ODEs: Parameters and Initial Conditions

This section outlines the constants, initial conditions, and parameters used in the system of ordinary differential equations for modeling the interaction between populations $N$, $L$, and $T$.

### Parameters 'Pillis_2008.m'
| **Parameter** | **Units**          | **Description**                                                   | **Value** | **Source**                                                                 |
|---------------|--------------------|-------------------------------------------------------------------|-----------------------------|---------------------------------------------------------------------------|
| **a₁**        | day⁻¹              | Growth rate of NK cells                                           | 1.11e-1                       | de Pillis et al., 2008                                                         |
| **a₂**        | day⁻¹              | Natural death rate of NK cells                                     | 1.25e-2                       | de Pillis et al., 2008                                                         |
| **b**         | cell⁻¹             | Inverse of NK cells carrying capacity                              | 1.02e-9                       | de Pillis et al., 2008                                                         |
| **c**         | cell⁻¹ day⁻¹      | Growth rate of tumor                                              | 4.31e-1                        | de Pillis et al., 2008                                                     |
| **d**         | cell⁻¹ day⁻¹      | Inverse of tumor carrying capacity                                 | 1.02e-9                           | de Pillis et al., 2008                                                   |
| **r₁**        | cell⁻¹ day⁻¹      | Rate of NK-lysed tumor cell debris activation of CTLs             | 2.9077e-11                  | de Pillis et al., 2008                                                     |
| **r₂**        | cell⁻¹ day⁻¹      | Rate of drug-activated CTL cells                                   | 5.8467e-13                  | de Pillis et al., 2008                                                     |
| **I₀**        | dose               | Initial drug dose                                                  | 1.0                         | de Pillis et al., 2008                                                     |
| **h**         | day⁻¹              | Drug half-life                                                     | 0.173                      | arbitrary                                                     |
| **μ**         | cell⁻¹ day⁻¹      | Death rate of CTLs                                                 | 9e-3                        | de Pillis et al., 2008                                                     |
| **α₁**        | cell⁻¹ day⁻¹      | Rate of NK cell death due to tumor interaction                     | 2.794e-13                   | de Pillis et al., 2008                                                     |
| **α₂**        | cell⁻¹ day⁻¹      | Rate of NK-induced tumor death                                     | 2.9077e-13                  | de Pillis et al., 2008                                                     |
| **β₁**        | cell⁻¹ day⁻¹      | Rate of CTLs death due to tumor interaction                        | 3.422e-10                   | de Pillis et al., 2008                                                     |
| **β₂**        | cell⁻¹ day⁻¹      | Rate of CTLs-induced tumor deaths                                  | 1.245e-2                  | de Pillis et al., 2008                                                     |

Initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: 10
- **$L_0$ (Initial population of $L$)**: 5
- **$T_0$ (Initial population of $T$)**: 2

TSPAN = [0 100]

### Parameters 'hybrid_1.m'
| **Parameter** | **Units**          | **Description**                                                   | **Value** | **Source**                                                                 |
|---------------|--------------------|-------------------------------------------------------------------|-----------------------------|---------------------------------------------------------------------------|
| **a₁**        | day⁻¹              | Growth rate of NK cells                                           | 0.043                       | Zhang et al., 2007                                                         |
| **a₂**        | day⁻¹              | Natural death rate of NK cells                                     | 0.069                       | Zhang et al., 2007                                                         |
| **b**         | cell⁻¹             | Inverse of NK cells carrying capacity                              | 8e-10                       | Zhang et al., 2007                                                         |
| **c**         | cell⁻¹ day⁻¹      | Growth rate of tumor                                              | 0.36                        | Buceta and Galeano., 2005                                                     |
| **d**         | cell⁻¹ day⁻¹      | Inverse of tumor carrying capacity                                 | 1                           | Gerlee and Anderson., 2015                                                    |
| **r₁**        | cell⁻¹ day⁻¹      | Rate of NK-lysed tumor cell debris activation of CTLs             | 2.9077e⁻¹¹                  | de Pillis et al., 2008                                                      |
| **r₂**        | cell⁻¹ day⁻¹      | Rate of drug-activated CTL cells                                   | 5.8467e⁻¹³                  | de Pillis et al., 2008                                                     |
| **I₀**        | dose               | Initial drug dose                                                  | 1.0                         | de Pillis et al., 2008                                                     |
| **h**         | day⁻¹              | Drug half-life                                                     | 1.3332                      | arbitrary                                                     |
| **μ**         | cell⁻¹ day⁻¹      | Death rate of CTLs                                                 | 9e⁻3                        | de Pillis et al., 2005                                                     |
| **α₁**        | cell⁻¹ day⁻¹      | Rate of NK cell death due to tumor interaction                     | 2.794e⁻¹³                   | de Pillis et al., 2008                                                     |
| **α₂**        | cell⁻¹ day⁻¹      | Rate of NK-induced tumor death                                     | 2.9077e⁻¹³                  | de Pillis et al., 2008                                                     |
| **β₁**        | cell⁻¹ day⁻¹      | Rate of CTLs death due to tumor interaction                        | 3.422e⁻10                   | de Pillis et al., 2005                                                     |
| **β₂**        | cell⁻¹ day⁻¹      | Rate of CTLs-induced tumor deaths                                  | 2.9077e-11                  | de Pillis et al., 2005                                                     

Initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: 10
- **$L_0$ (Initial population of $L$)**: 5
- **$T_0$ (Initial population of $T$)**: 2

TSPAN = [0 100]

### Parameters 'arbitrary_1.m'
| **Parameter** | **Units**          | **Description**                                                   | **Value** | **Source**                                                                 |
|---------------|--------------------|-------------------------------------------------------------------|-----------------------------|---------------------------------------------------------------------------|
| **a₁**        | day⁻¹              | Growth rate of NK cells                                           | 0.5                       | arbitrary                                                         |
| **a₂**        | day⁻¹              | Natural death rate of NK cells                                     | 0.1                       | arbitrary                                                         |
| **b**         | cell⁻¹             | Inverse of NK cells carrying capacity                              | 0.02                       | arbitrary                                                         |
| **c**         | cell⁻¹ day⁻¹      | Growth rate of tumor                                              | 0.6                        | arbitrary                                                    |
| **d**         | cell⁻¹ day⁻¹      | Inverse of tumor carrying capacity                                 | 0.02                           | arbitrary                                                   |
| **r₁**        | cell⁻¹ day⁻¹      | Rate of NK-lysed tumor cell debris activation of CTLs             | 0.02                  | arbitrary                                                     |
| **r₂**        | cell⁻¹ day⁻¹      | Rate of drug-activated CTL cells                                   | 0.1                 | arbitrary                                                  |
| **I₀**        | dose               | Initial drug dose                                                  | 1.0                         | arbitrary                                                   |
| **h**         | day⁻¹              | Drug half-life                                                     | 10                      | arbitrary                                                   |
| **μ**         | cell⁻¹ day⁻¹      | Death rate of CTLs                                                 | 0.1                        | arbitrary                                                  |
| **α₁**        | cell⁻¹ day⁻¹      | Rate of NK cell death due to tumor interaction                     | 0.05                   | arbitrary                                               |
| **α₂**        | cell⁻¹ day⁻¹      | Rate of NK-induced tumor death                                     | 0.04                  | arbitrary                                                   |
| **β₁**        | cell⁻¹ day⁻¹      | Rate of CTLs death due to tumor interaction                        | 0.03                   | arbitrary                                              |
| **β₂**        | cell⁻¹ day⁻¹      | Rate of CTLs-induced tumor deaths                                  | 0.02                  | arbitrary                                                   

Initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: 10
- **$L_0$ (Initial population of $L$)**: 5
- **$T_0$ (Initial population of $T$)**: 2

TSPAN = [0 100]

### Parameters 'nondimensionalized.m'

Place parameters here ..

### Parameters (Low Risk)

### Parameters (Intermediate Risk)

### Parameters (High Risk)


### Literature Cited


- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. 

- **Source**: Buceta, J., & Galeano, J. (2005). *Comments on the article “The universal dynamics of tumor growth” by A. Brú et al.* Biophysical Journal, 88(5), 3734–3736. 

- **Source**: Gerlee, P., & Anderson, A. R. (2015). *The evolution of carrying capacity in constrained and expanding tumour cell populations*. Physical Biology, 12(5), 056001.

- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184.

