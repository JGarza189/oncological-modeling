## Mathematical Modeling of Tumor-Immune Dynamics: A Novel Case Study on Immunotherapy and Tumor Suppression

#### Project Contributors: BV Shankara Narayana Rao¹, Kate Brockman¹, Tony Liao¹, Brian Colburn¹, Joseph Garza²

#### Affiliations:
1. Department of Mathematics and Statistics, Texas A&M University - Corpus Christi  
2. Department of Life Sciences, Texas A&M University - Corpus Christi

##### **Keywords**: Mathematical Modeling; Tumor-Immune Dynamics; Immunotherapy; Ordinary Differential Equations; Cancer Treatment Optimization


## Overview:

This repository contains scripts, data, and supplementary material associated with an applied modeling project  at Texas A&M University - Corpus Christi. The project aims to develop mathematical models to investigate the impact of immunotherapy on tumor growth, using a system of ordinary differential equations to model interactions between tumor cells, natural killer cells, CTL cells, and therapeutic agents.

### Objectives:

This study investigates the role of immunotherapy in tumor suppression, focusing on how immune responses and therapeutic strategies can influence tumor dynamics. The following goals guide the research:

**Objective 1**: Develop a system of ordinary differential equations to model the interactions between natural killer cells (N), CTL cells (L), and tumor cells (T). 

**Objective 2**: Investigate the effect of immunotherapy on tumor suppression by modeling how therapeutic agents influence tumor growth and immune cell activation. 

$$
\begin{aligned}
\begin{cases}
N'(t) = a_1 N(t)(1 - bN(t)) - a_2 N(t) - \alpha_1 N(t) T(t), \\
L'(t) = r_1 N(t) T(t) + r_2 I_0 2^{-\frac{t}{h}} - \mu L(t) - \beta_1 L(t) T(t), \\
T'(t) = c T(t) (1 - d T(t)) - \alpha_2 N(t) T(t) - \beta_2 L(t) T(t).
\end{cases} \quad (1)
\end{aligned}
$$


This model aims to simulate the dynamics of tumor growth, immune cell interactions, and the impact of immunotherapy, with the goal of optimizing therapeutic strategies.
