## (WORK IN PROGRESS) System of ODEs: Parameters and Initial Conditions

This section outlines the constants, initial conditions, and parameters used in the system of ordinary differential equations for modeling the interaction between populations $N$, $L$, and $T$.

## Initial Conditions
Initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: Initial population of natural killer cells $N$.
- **$L_0$ (Initial population of $L$)**: Initial population of CTL cells $L$.
- **$T_0$ (Initial population of $T$)**: Initial population of tumor cells $T$.

## Parameters

- **$a_1$ (Growth rate of $N$)**: Coefficient governing the growth rate of $N$.
- **$b$ (regulation for $N$)**: Density-dependent regulation for $N$ (logistic growth).
- **$a_2$ (Mortality rate of $N$)**: Mortality rate of $N$.
- **$\alpha_1$ (Predation or interaction rate between $N$ and $T$)**: Rate at which $N$ affects $T$ 
- **$r_1$ (Growth rate of $L$ due to $N$ and $T$ interaction)**: Rate at which $L$ grows due to interaction with $N$ and $T$.
- **$r_2$ (Growth rate of $L$ from  input)**: Growth rate of $L$ ..
- **$I_0$ (..)**: Initial level ..
- **$h$ (Decay rate ..)**: Time scale  ...
- **$\mu$ (Decay rate of $L$)**: Mortality rate of $L$.
- **$\beta_1$ (Effect of $T$ on $L$'s growth)**: Impact of $T$ on the growth of $L$.
- **$c$ (Intrinsic growth  of $T$)**: Intrinsic growth rate of $T$.
- **$d$ (Density for $T$)**: Density-dependent regulation $T$.
- **$\alpha_2$ (Predation or interaction rate between $N$ and $T$)**: Rate at which $N$ affects $T$ ..
- **$\beta_2$ (Effect of $L$ on $T$'s growth)**: Effect of $L$ on $T$'s growth.

a1 (Growth rate of NK cells / day)
Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). in vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection. Immunology, 121(2), 258–265.     (Zhang et al., 2007)

a2 (Natural death rate of NK Cells/day)
Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). in vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection. Immunology, 121(2), 258–265.      (Zhang et al., 2007)

b (inverse of NK cells carry capacity)
Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). in vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection. Immunology, 121(2), 258–265.      (Zhang et al., 2007)

c (tumor growth rate/day)
Buceta, J., & Galeano, J. (2005). Comments on the article “The universal dynamics of tumor growth” by A. Brú et al.. Biophysical Journal, 88(5), 3734–3736.      (Buceta & Galeano, 2005)

d (invere of tumor caryin capicty)
Gerlee, P., & Anderson, A. R. (2015). The evolution of carrying capacity in constrained and expanding tumour cell populations. Physical Biology, 12(5), 056001.      (Gerlee & Anderson, 2015)

r1 (rate of NK-lysed tumor cell debris activation of CTLs)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008)

r2 (rate of drug activated CTL cells)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

Io (inital drug dose)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

h (drug half life)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

mu (death rate of CTL)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

alpah 1(rate of NK cell death due to tumor interaction)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

alpha 2 (rate of NK induced tumor death)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

beta 1 (rate of CTLs death due to tumore interaction)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008

beta 2 (rate of CTLS induce tumore deaths)
de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). Mathematical model creation for cancer chemo‐immunotherapy. Computational and Mathematical Methods in Medicine, 10(3), 165–184.        (de Pillis et al., 2008


# Parameter Descriptions and Sources

### a1 (Growth rate of NK cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

### a2 (Natural death rate of NK Cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

### b (Inverse of NK cells carrying capacity)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

### c (Tumor growth rate / day)
- **Source**: Buceta, J., & Galeano, J. (2005). *Comments on the article “The universal dynamics of tumor growth” by A. Brú et al.* Biophysical Journal, 88(5), 3734–3736. (Buceta & Galeano, 2005)

### d (Inverse of tumor carrying capacity)
- **Source**: Gerlee, P., & Anderson, A. R. (2015). *The evolution of carrying capacity in constrained and expanding tumour cell populations*. Physical Biology, 12(5), 056001. (Gerlee & Anderson, 2015)

### r1 (Rate of NK-lysed tumor cell debris activation of CTLs)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### r2 (Rate of drug-activated CTL cells)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### Io (Initial drug dose)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### h (Drug half-life)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### mu (Death rate of CTLs)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### alpha 1 (Rate of NK cell death due to tumor interaction)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### alpha 2 (Rate of NK-induced tumor death)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### beta 1 (Rate of CTLs death due to tumor interaction)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### beta 2 (Rate of CTLs induced tumor death)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

### Parameters
| **Parameter** | **Units**          | **Description**                                                   | **Estimated Value (units)** | **Source**                                                                 |
|---------------|--------------------|-------------------------------------------------------------------|-----------------------------|---------------------------------------------------------------------------|
| a1            | day^-1             | Growth rate of NK cells                                           | todo                        | Zhang et al., 2007                                                         |
| a2            | day^-1             | Natural death rate of NK cells                                     | todo                        | Zhang et al., 2007                                                         |
| b             | cell^-1            | Inverse of NK cells carrying capacity                              | todo                        | Zhang et al., 2007                                                         |
| c             | cell^-1 day^-1     | Growth rate of tumor                                              | todo                        | Buceta & Galeano, 2005                                                     |
| d             | cell^-1 day^-1     | Inverse of tumor carrying capacity                                 | todo                        | Gerlee & Anderson, 2015                                                   |
| r1            | cell^-1 day^-1     | Rate of NK-lysed tumor cell debris activation of CTLs             | todo                        | de Pillis et al., 2008                                                     |
| r2            | cell^-1 day^-1     | Rate of drug-activated CTL cells                                   | todo                        | de Pillis et al., 2008                                                     |
| Io            | dose               | Initial drug dose                                                  | todo                        | de Pillis et al., 2008                                                     |
| h             | day^-1             | Drug half-life                                                     | todo                        | de Pillis et al., 2008                                                     |
| mu            | cell^-1 day^-1     | Death rate of CTLs                                                 | todo                        | de Pillis et al., 2008                                                     |
| alpha 1       | cell^-1 day^-1     | Rate of NK cell death due to tumor interaction                     | todo                        | de Pillis et al., 2008                                                     |
| alpha 2       | cell^-1 day^-1     | Rate of NK-induced tumor death                                     | todo                        | de Pillis et al., 2008                                                     |
| beta 1        | cell^-1 day^-1     | Rate of CTLs death due to tumor interaction                        | todo                        | de Pillis et al., 2008                                                     |
| beta 2        | cell^-1 day^-1     | Rate of CTLs-induced tumor deaths                                  | todo                        | de Pillis et al., 2008                                                     |


### Parameters

#### a1 (Growth rate of NK cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

#### a2 (Natural death rate of NK Cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

#### b (Inverse of NK cells carrying capacity)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. (Zhang et al., 2007)

#### c (Tumor growth rate / day)
- **Source**: Buceta, J., & Galeano, J. (2005). *Comments on the article “The universal dynamics of tumor growth” by A. Brú et al.* Biophysical Journal, 88(5), 3734–3736. (Buceta & Galeano, 2005)

#### d (Inverse of tumor carrying capacity)
- **Source**: Gerlee, P., & Anderson, A. R. (2015). *The evolution of carrying capacity in constrained and expanding tumour cell populations*. Physical Biology, 12(5), 056001. (Gerlee & Anderson, 2015)

#### r1 (Rate of NK-lysed tumor cell debris activation of CTLs)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### r2 (Rate of drug-activated CTL cells)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### Io (Initial drug dose)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### h (Drug half-life)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### mu (Death rate of CTLs)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### alpha 1 (Rate of NK cell death due to tumor interaction)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### alpha 2 (Rate of NK-induced tumor death)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### beta 1 (Rate of CTLs death due to tumor interaction)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

#### beta 2 (Rate of CTLs-induced tumor death)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. (de Pillis et al., 2008)

