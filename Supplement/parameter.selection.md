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
1. **`p_1`**: Natural killer cell growth rate.
   
2. **`p_2`**: Natural killer cell death rate due to natural death.

3. **`q`**: Carrying capacity coefficient for natural killer cell population.

4. **`r`**: Rate constant of drug-mediated stimulation.

5. **`s`**: Interaction term between CTLs and NK cells.

6. **`u`**: Natural tumor cell growth rate 

7. **`v`**: Carrying capacity coefficient for tumor cell population

8. **`δ`**: Interaction term between CTLs and tumor cells.

9. **`h`**: Half-life of the drug.

10. **`D_0^*`**: Initial dose or concentration of either IL-2 or Cyclophosphamide).


### Parameter Derivation

### 1. **`p_1`**: Natural Killer Cell Growth Rate

This parameter represents the rate at which natural killer (NK) cells proliferate in response to tumor presence and immune stimulation.

---

### 2. **`p_2`**: Natural Killer Cell Death Rate

This parameter reflects the natural death rate of NK cells, including factors such as apoptosis and immune regulation.

---

### 3. **`q`**: Carrying Capacity Coefficient for Natural Killer Cell Population

This coefficient represents the environmental limitation on NK cell growth, reflecting how the population reaches a maximum under given conditions.

---

### 4. **`r`**: Rate Constant of Drug-Mediated Stimulation

This parameter quantifies the effectiveness of drug-induced NK cell activation, capturing how IL-2 or Cyclophosphamide enhances NK cell activity.

---

### 5. **`s`**: Interaction Term Between CTLs and NK Cells

This parameter quantifies the degree of cooperation or competition between CTLs and NK cells in eliminating tumor cells.

---

### 6. **`u`**: Natural Tumor Cell Growth Rate

This parameter represents the natural rate of tumor cell proliferation in the absence of immune response or treatment.

---

### 7. **`v`**: Carrying Capacity Coefficient for Tumor Cell Population

This coefficient describes the environmental limits on tumor growth, accounting for factors such as space, resources, and immune responses.

---

### 8. **`δ`**: Interaction Term Between CTLs and Tumor Cells

This parameter reflects the efficacy of CTLs in targeting and killing tumor cells during immune surveillance.

---

### 9. **`h`**: Half-Life of the Drug

The half-life of the drug represents the time it takes for half of the administered dose of IL-2 or Cyclophosphamide to degrade or be eliminated from the system.

---

### 10. **`D_0^*`**: Initial Dose or Concentration of IL-2 or Cyclophosphamide

This parameter represents the starting dose or concentration of the therapeutic agent administered to the patient.






## Literature Cited
Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.



