## Parameter Selection

This document outlines the parameters used in our system of ordinary differential equations (ODEs) for modeling the interactions between cell populations $N$ (Natural Killer Cells), $L$ (CTL Cells), $T$ (Tumor Cells), whilst incorporating a drug interaction term $D$ (Drug Concentration). The model incorporates various tumor stages and treatment strategies, which are critical for defining initial conditions and simulating the progression of Neuroblastoma over time.

The interactions between tumor progression, drug concentration, and patient population drive the proposed initial conditions, which are tailored according to the patient's disease stage and patient profile. This modeling approach optimizes treatment plans by simulating various scenarios and predicting treatment efficacy for individual patient populations.

### Patient Populations

Our approach to modeling the immunotherapeutic dynamics of neuroblastoma is built upon the International Neuroblastoma Risk Group Staging System (INRGSS). The use of the INRGSS and its corresponding risk classification (INRG) has greatly enhanced the ability to compare risk-based clinical trials conducted across different regions of the world (Monclair et al., 2009). In this study, we utilize this system to differentiate patient populations, capitalizing on its effectiveness in enabling the comparison of clinical trials conducted globally.

$$
\begin{cases}
N'(t) = p_1 N(t) (1 - q N(t)) - p_2 N(t) - N(t) T(t), \\
L'(t) = N(t) T(t) + r D(t) - L(t) - s L(t) T(t), \\
T'(t) = u T(t) (1 - v T(t)) - N(t) T(t) - \delta L(t) T(t), \\
D'(t) = -\frac{\log(2)}{h} 2^{-\frac{t}{h}} D_0^*
\end{cases}
$$



| **Risk Category** | **Description**                                                                                                                                                                    | **Source**                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| **Low Risk**      | Patients with **L1** (localized tumors in one area) or **MS** (asymptomatic with favorable biology and metastases limited to skin, liver, or bone marrow) are considered low risk. These patients typically require observation, with surgery or chemotherapy only if symptoms arise. | Tolbert & Matthay, 2018   |
| **Medium Risk**   | **L2** (regional tumors with IDRFs) and **MS** with unfavorable biology (e.g., diploidy) are classified as intermediate risk. These tumors may need chemotherapy, with surgery recommended if possible. | Tolbert & Matthay, 2018   |
| **High Risk**     | **M** (distant metastases), **MS** with MYCN amplification, or **L2** in patients over 18 months with unfavorable features are high risk. These patients require aggressive treatment including chemotherapy, surgery, and stem cell therapy. | Tolbert & Matthay, 2018   |

To establish the initial conditions for our mathematical model, we differentiated three distinct patient populations—low-risk, medium-risk, and high-risk—based on tumor stage and biological factors. We then derived the relative abundance of tumor cells, CTLs, and NK cells for each patient population from the literature, ensuring that the initial conditions capture the clinical variability in immune cell populations and tumor response across the different risk groups, with a particular emphasis on relative ratios. 

### Initial Conditions for Various Patient Populations

| **Parameter** | **Unit** | **Low Risk** | **Intermediate Risk** | **High Risk** | **Description**| **Source** |
|---------------|----------|--------------|-----------------------|---------------|-------------------------------------------|------------|
| **N₀**        | cells    | 10           | 10                    | 7             | Initial amount of NK cells                | source     |
| **L₀**        | cells    | 1            | 5                     | 10            | Initial amount of tumor cells             | source     |
| **T₀**        | cells    | 1            | 10                    | 100           | Initial amount of CTL cells              | source     |
| **D₀**        | cells    | TBD          | TBD                   | TBD           | Dose of a specific drug            | source     |

The low-risk population is characterized by a relatively low tumor cell count and a robust immune response, where natural killer (NK) cells, part of the innate immune system, offer immediate defense. While cytotoxic T lymphocytes (CTLs), which belong to the adaptive immune response, provide a more targeted and long-term defense, their abundance is lower compared to NK cells. In the intermediate-risk population, the tumor cell count is higher, prompting a more significant role for CTLs in the immune response. Though NK cells still serve as the first line of defense, the increased tumor burden necessitates a more coordinated immune response, with CTLs becoming increasingly critical for targeting and eliminating the growing tumor cells. In the high-risk population, the tumor cell count is further elevated, and the immune system faces greater challenges. While NK cells continue to provide initial defense, CTLs are essential for long-term tumor control, as their ability to recognize specific antigens enables a more sustained immune response against the rapidly proliferating tumor cells.

## Pharmacology


## Literature Cited
Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.



