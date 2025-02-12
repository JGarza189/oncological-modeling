## System of ODEs: Parameters and Initial Conditions

This section outlines the constants, initial conditions, and parameters used in the system of ordinary differential equations for modeling the interaction between populations $N$, $L$, and $T$.

### Initial Conditions
Initial condition for the populations at time $t = 0$.

- **$N_0$ (Initial population of $N$)**: Initial population of natural killer cells $N$.
- **$L_0$ (Initial population of $L$)**: Initial population of CTL cells $L$.
- **$T_0$ (Initial population of $T$)**: Initial population of tumor cells $T$.

### Parameters
| **Parameter** | **Units**          | **Description**                                                   | **Value** | **Source**                                                                 |
|---------------|--------------------|-------------------------------------------------------------------|-----------------------------|---------------------------------------------------------------------------|
| **a₁**        | day⁻¹              | Growth rate of NK cells                                           | 0.043                       | Zhang et al., 2007                                                         |
| **a₂**        | day⁻¹              | Natural death rate of NK cells                                     | 0.069                       | Zhang et al., 2007                                                         |
| **b**         | cell⁻¹             | Inverse of NK cells carrying capacity                              | 8e⁻¹⁰                       | Zhang et al., 2007                                                         |
| **c**         | cell⁻¹ day⁻¹      | Growth rate of tumor                                              | 0.36                        | Buceta & Galeano, 2005                                                     |
| **d**         | cell⁻¹ day⁻¹      | Inverse of tumor carrying capacity                                 | 1                           | Gerlee & Anderson, 2015                                                   |
| **r₁**        | cell⁻¹ day⁻¹      | Rate of NK-lysed tumor cell debris activation of CTLs             | 2.9077e⁻¹¹                  | de Pillis et al., 2008                                                     |
| **r₂**        | cell⁻¹ day⁻¹      | Rate of drug-activated CTL cells                                   | 5.8467e⁻¹³                  | de Pillis et al., 2008                                                     |
| **I₀**        | dose               | Initial drug dose                                                  | 1.0                         | de Pillis et al., 2008                                                     |
| **h**         | day⁻¹              | Drug half-life                                                     | 1.3332                      | de Pillis et al., 2008                                                     |
| **μ**         | cell⁻¹ day⁻¹      | Death rate of CTLs                                                 | 9e⁻³                        | de Pillis et al., 2008                                                     |
| **α₁**        | cell⁻¹ day⁻¹      | Rate of NK cell death due to tumor interaction                     | 2.794e⁻¹³                   | de Pillis et al., 2008                                                     |
| **α₂**        | cell⁻¹ day⁻¹      | Rate of NK-induced tumor death                                     | 2.9077e⁻¹³                  | de Pillis et al., 2008                                                     |
| **β₁**        | cell⁻¹ day⁻¹      | Rate of CTLs death due to tumor interaction                        | 3.422e⁻¹⁰                   | de Pillis et al., 2008                                                     |
| **β₂**        | cell⁻¹ day⁻¹      | Rate of CTLs-induced tumor deaths                                  | 2.9077e⁻¹¹                  | de Pillis et al., 2008                                                     |



### Literature Cited

#### $a_1$ (Growth rate of NK cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. 

#### $a_2$ (Natural death rate of NK cells / day)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. 

#### $b$ (Inverse of NK cell carrying capacity)
- **Source**: Zhang, Y., Wallace, D. L., De Lara, C. M., Ghattas, H., Asquith, B., Worth, A., Griffin, G. E., Taylor, G. P., Tough, D. F., Beverley, P. C., & Macallan, D. C. (2007). *In vivo kinetics of human natural killer cells: The effects of ageing and acute and chronic viral infection*. Immunology, 121(2), 258–265. 

#### $c$ (Tumor growth rate / day)
- **Source**: Buceta, J., & Galeano, J. (2005). *Comments on the article “The universal dynamics of tumor growth” by A. Brú et al.* Biophysical Journal, 88(5), 3734–3736. 

#### $d$ (Inverse of tumor carrying capacity)
- **Source**: Gerlee, P., & Anderson, A. R. (2015). *The evolution of carrying capacity in constrained and expanding tumour cell populations*. Physical Biology, 12(5), 056001.

#### $r_1$ (Rate of NK-lysed tumor cell debris activation of CTLs / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184.

#### $r_2$ (Rate of drug-activated CTL cells / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184.

#### $I_0$ (Initial drug dose / mg)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184.

#### $h$ (Drug half-life / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. 

#### $\mu$ (Death rate of CTLs / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. 

#### $\alpha_1$ (Rate of NK cell death due to tumor interaction / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. 

#### $\alpha_2$ (Rate of NK-induced tumor death / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184.

#### $\beta_1$ (Rate of CTL death due to tumor interaction / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. 

#### $\beta_2$ (Rate of CTL-induced tumor death / day)
- **Source**: de Pillis, L., Fister, K. R., Gu, W., Collins, C., Daub, M., Gross, D., Moore, J., & Preskill, B. (2008). *Mathematical model creation for cancer chemo‐immunotherapy*. Computational and Mathematical Methods in Medicine, 10(3), 165–184. 
