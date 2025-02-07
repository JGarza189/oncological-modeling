# Mathematical Modeling of Tumor-Immune Dynamics: A Novel Case Study on Immunotherapy and Tumor Suppression

##### Project Contributors: BV Shankara Narayana Rao¹, Joseph Garza², Kate Brockman¹, Tony Liao¹, Brian Colburn¹

##### Affiliations:
1. Department of Mathematics and Statistics, Texas A&M University - Corpus Christi  
2. Department of Life Sciences, Texas A&M University - Corpus Christi

##### **Keywords**: Mathematical Modeling; Tumor-Immune Dynamics; Immunotherapy; Ordinary Differential Equations; Cancer Treatment Optimization


## Overview:

This repository contains scripts, data, and supplementary material associated with a applied modeling project  at Texas A&M University - Corpus Christi. The project aims to develop mathematical models to investigate the impact of immunotherapy on tumor growth, using a system of ordinary differential equations (ODEs) to model interactions between tumor cells, NK cells, CTLs, and therapeutic agents.

### Objectives:

This study investigates the role of immunotherapy in tumor suppression, focusing on how immune responses and therapeutic strategies can influence tumor dynamics. The following goals guide the research:

**Objective 1**: Develop a system of ordinary differential equations (ODEs) to model the interactions between tumor cells (N), immune cells (L), and therapeutic agents (T). The system incorporates tumor growth rates, immune response dynamics, and the impact of immunotherapy on these processes.

**Objective 2**: Investigate the effect of immunotherapy on tumor suppression by modeling how therapeutic agents (T) influence tumor growth and immune cell activation. The goal is to identify how immunotherapy can optimize immune system responses to enhance tumor suppression.

$$
\begin{aligned}
N'(t) &= a_1 N(t)(1 - bN(t)) - a_2 N(t) - \alpha_1 N(t) T(t) \\
L'(t) &= r_1 N(t) T(t) + r_2 I_0 2^{-\frac{t}{h}} - \mu L(t) - \beta_1 L(t) T(t) \\
T'(t) &= c T(t) (1 - d T(t)) - \alpha_2 N(t) T(t) - \beta_2 L(t) T(t)
\end{aligned}
$$


This model aims to simulate the dynamics of tumor growth, immune cell interactions, and the impact of immunotherapy, with the goal of optimizing therapeutic strategies.
