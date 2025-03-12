## Parameter Selection

This document outlines the parameters used in our system of ordinary differential equations (ODEs) for modeling the interactions between cell populations $N$ (Natural Killer Cells), $L$ (CTL Cells), $T$ (Tumor Cells), whilst incorporating a drug interaction term $D$ (Drug Concentration). The model incorporates various tumor stages and treatment strategies, which are critical for defining initial conditions and simulating the progression of Neuroblastoma over time.

$$
\begin{cases}
N'(t) = p_1 N(t) (1 - q N(t)) - p_2 N(t) - N(t) T(t), \\
L'(t) = N(t) T(t) + r D(t) - L(t) - s L(t) T(t), \\
T'(t) = u T(t) (1 - v T(t)) - N(t) T(t) - \delta L(t) T(t), \\
D'(t) = -\frac{\log(2)}{h} 2^{-\frac{t}{h}} D_0^*
\end{cases}
$$

The interactions between tumor progression, drug concentration, and patient population drive the proposed initial conditions, which are tailored according to the patient's disease stage and patient profile. This modeling approach optimizes treatment plans by simulating various scenarios and predicting treatment efficacy for individual patient populations.

### Patient Populations

Our approach to modeling the immunotherapeutic dynamics of neuroblastoma is built upon the International Neuroblastoma Risk Group Staging System (INRGSS). The use of the INRGSS and its corresponding risk classification (INRG) has greatly enhanced the ability to compare risk-based clinical trials conducted across different regions of the world (Monclair et al., 2009). In this study, we utilize this system to differentiate patient populations, capitalizing on its effectiveness in enabling the comparison of clinical trials conducted globally.

| **Risk Category** | **Description**                                                                                                                                                                    | **Source**                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| **Low Risk**      | Patients with **L1** (localized tumors in one area) or **MS** (asymptomatic with favorable biology and metastases limited to skin, liver, or bone marrow) are considered low risk. These patients typically require observation, with surgery or chemotherapy only if symptoms arise. | Tolbert & Matthay, 2018   |
| **Medium Risk**   | **L2** (regional tumors with IDRFs) and **MS** with unfavorable biology (e.g., diploidy) are classified as intermediate risk. These tumors may need chemotherapy, with surgery recommended if possible. | Tolbert & Matthay, 2018   |
| **High Risk**     | **M** (distant metastases), **MS** with MYCN amplification, or **L2** in patients over 18 months with unfavorable features are high risk. These patients require aggressive treatment including chemotherapy, surgery, and stem cell therapy. | Tolbert & Matthay, 2018   |

To establish the initial conditions for our mathematical model, we utilized the three distinct patient populations—low-risk, medium-risk, and high-risk—based on tumor stage and biological factors. We then derived the relative initial abundance of tumor cells, CTLs, and NK cells for each patient population using data from the literature, ensuring that the initial conditions capture the clinical variability in immune cell populations across the different risk groups, with a particular emphasis on relative ratios. 

### Initial Conditions for Various Patient Populations

| **Parameter** | **Unit** | **Low Risk** | **Intermediate Risk** | **High Risk** | **Description**| **Source** |
|---------------|----------|--------------|-----------------------|---------------|-------------------------------------------|------------|
| **N₀**        | cells    | 10           | 10                    | 7             | Initial amount of NK cells                | source     |
| **L₀**        | cells    | 1            | 5                     | 10            | Initial amount of tumor cells             | source     |
| **T₀**        | cells    | 1            | 10                    | 100           | Initial amount of CTL cells              | source     |
| **D₀**        | cells    | TBD          | TBD                   | TBD           | Dose of a specific drug            | source     |

The low-risk population is characterized by a relatively low tumor cell count and a robust immune response, where natural killer (NK) cells, part of the innate immune system, offer immediate defense. While cytotoxic T lymphocytes (CTLs), which belong to the adaptive immune response, provide a more targeted and long-term defense, their abundance is lower compared to NK cells. In the intermediate-risk population, the tumor cell count is higher, prompting a more significant role for CTLs in the immune response. Though NK cells still serve as the first line of defense, the increased tumor burden necessitates a more coordinated immune response, with CTLs becoming increasingly critical for targeting and eliminating the growing tumor cells. In the high-risk population, the tumor cell count is further elevated, and the immune system faces greater challenges. While NK cells continue to provide initial defense, CTLs are essential for long-term tumor control, as their ability to recognize specific antigens enables a more sustained immune response against the rapidly proliferating tumor cells.

### Parameter Selection

In this section, we outline the key parameters that need to be defined based on existing literature to accurately model the immune-cellular dynamics of neuroblastoma progression. These parameters are crucial for setting up the system of ordinary differential equations and understanding the interactions between tumor cells, natural killer cells (NK), cytotoxic T lymphocytes (CTLs), and the impact of therapeutic agents such as IL-2 and Cyclophosphamide.

$$
\begin{cases}
N'(t) = p_1 N(t) (1 - q N(t)) - p_2 N(t) - N(t) T(t), \\
L'(t) = N(t) T(t) + r D(t) - L(t) - s L(t) T(t), \\
T'(t) = u T(t) (1 - v T(t)) - N(t) T(t) - \delta L(t) T(t), \\
D'(t) = -\frac{\log(2)}{h} 2^{-\frac{t}{h}} D_0^*
\end{cases}
$$

#### Parameters to Define:

| Parameter | Description |
|-----------|-------------|
| **`p_1`** | Natural killer cell growth rate. |
| **`p_2`** | Natural killer cell death rate due to natural death. |
| **`q`**   | Carrying capacity coefficient for natural killer cell population. |
| **`r`**   | Rate constant of drug-mediated stimulation. |
| **`s`**   | Interaction term between CTLs and NK cells. |
| **`u`**   | Natural tumor cell growth rate. |
| **`v`**   | Carrying capacity coefficient for tumor cell population. |
| **`δ`**   | Interaction term between CTLs and tumor cells. |
| **`h`**   | Half-life of the drug. |
| **`D_0^*`** | Initial dose or concentration of either IL-2 or Cyclophosphamide. |


### Parameter Derivation


### 1. **`p_1`**: Natural Killer Cell Growth Rate


### 2. **`p_2`**: Natural Killer Cell Death Rate

The natural killer cell death rate is given by:

$$
p_2 = \frac{1}{14} = 0.07143
$$

Assuming the average rate of death is 14 days*

#### Advances in NK cell production (Fang et al., 2022)
> "However, the lifespan of activated NK cells in vivo is approximately 7 days, and transferred in vitro-activated NK cells can persist for 7 to 22 days in vivo, both of which are still lower than the lifespan of effector CD8+ T cells and memory CD8+ T cells in vivo (approximately 2–3 weeks to months)."

### 3. **`q`**: Carrying Capacity Coefficient for Natural Killer Cell Population


### 4. **`r`**: Rate Constant of Drug-Mediated Stimulation


### 5. **`s`**: Interaction Term Between CTLs and NK Cells


### 6. **`u`**: Natural Tumor Cell Growth Rate


### 7. **`v`**: Carrying Capacity Coefficient for Tumor Cell Population


### 8. **`δ`**: Interaction Term Between CTLs and Tumor Cells


### 9. **`h`**: Half-Life of the Drug

#### Cyclophosphamide:

#### IL-2:

h = 5 minutes

#### Engineered cytokine-antibody fusion proteins for targeted stimulation of anti-cancer immunity (Spangler, 2025)
> "IL-2 has shown tremendous potential as an anti-cancer therapeutic and elicits complete and durable responses in 5-10 percent of treated patients. However, clinical use of IL-2 has been limited by severe toxicities, counterproductive activation of regulatory T cells (Tregs), and the cytokine’s vanishingly short serum half-life (<5 min)."

#### AHR-1916: A Novel PEGylated Interleukin-2 Analogue with Altered Cellular Selectivity and Improved Pharmacokinetic Profiles for Cancer Immunotherapy (Kong et al., 2025)
>"IL-2’s short half-life is another limitation, resulting from its relatively small molecular weight and rapid excretion through the kidneys. When administered intravenously, IL-2 undergoes rapid elimination, exhibiting a 6–12 minute initial elimination half-life and a 40–80 minute terminal elimination half-life.Citation10 Therefore, it must be administered frequently, significantly affecting overall treatment adherence among patients and limiting its clinical use."


### 10. **`D_0^*`**: Initial Dose or Concentration of IL-2 or Cyclophosphamide

#### Cyclophosphamide Dosing:

- **Low**: 2 mg/kg × 81 kg = 162 mg
- **Intermediate**: 27.5 mg/kg × 81 kg = 2,227.5 mg
- **High**: 120 mg/kg × 81 kg = 9,720 mg

#### Cyclophosphamide and Cancer: Golden Anniversary (Emadi et al., 2009)

> "The dosage, and hence toxicity profile, of cyclophosphamide varies widely depending on the clinical indication. For the purpose of this review, we somewhat arbitrarily define the dosages of cyclophosphamide as follows:"
>
> - **Low dose**: 1–3 mg/kg (40–120 mg/m²), usually administered orally daily.  
> - **Intermediate** or **pulse dose**: 15–40 mg/kg (600–1,500 mg/m²), usually administered intravenously every 3–4 weeks.  
> - **High dose**: >120 mg/kg (>5,000 mg/m²), most commonly administered over 2–4 days as conditioning for bone marrow transplantation.

> *Assuming an 81 kg individual*

---

#### IL-2 Dosing:

- **Initial Dose**: 1.5 mg/kg × 81 kg = 121.5 mg

#### AHR-1916: A Novel PEGylated Interleukin-2 Analogue with Altered Cellular Selectivity and Improved Pharmacokinetic Profiles for Cancer Immunotherapy (Kong et al., 2025)

> "Rats from each group received just one injection of 1.5 mg/kg SHR-1916 intravenously (via tail vein) or 1.5 mg/kg, 3 mg/kg, and 6 mg/kg of SHR-1916 subcutaneously (in the dorsal neck region)."

> *Assuming an 81 kg rat*

### 11. **`x`**: Possible parameter including natural rate of death for CTL cells

The natural killer cell death rate is given by:

$$
[] = \frac{1}{28} = 0.03571
$$

Assuming the average rate of death is 28 days*

#### Advances in NK cell production (Fang et al., 2022)
> "However, the lifespan of activated NK cells in vivo is approximately 7 days, and transferred in vitro-activated NK cells can persist for 7 to 22 days in vivo, both of which are still lower than the lifespan of effector CD8+ T cells and memory CD8+ T cells in vivo (approximately 2–3 weeks to months)."

## Literature Cited

Emadi, A., Jones, R. J., & Brodsky, R. A. (2009). Cyclophosphamide and cancer: Golden Anniversary. Nature Reviews Clinical Oncology, 6(11), 638–647. 

Fang, F., Xie, S., Chen, M., Li, Y., Yue, J., Ma, J., Shu, X., He, Y., Xiao, W., & Tian, Z. (2022). Advances in NK cell production. Cellular &amp; Molecular Immunology, 19(4), 460–481. 

Kong, X., Lin, Y., Ouyang, C., Chen, H., & Gao, X. (2025). SHR-1916: A novel pegylated interleukin-2 analogue with altered cellular selectivity and improved pharmacokinetic profiles for cancer immunotherapy. Drug Design, Development and Therapy, Volume 19, 1251–1270. 

Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Spangler, J. B. (2025). Abstract IA07: Engineered cytokine-antibody fusion proteins for targeted stimulation of anti-cancer immunity. Cancer Immunology Research, 13(2_Supplement).

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.



