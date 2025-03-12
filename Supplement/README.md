# Supplement

## cellular.pharmacology.notes.md
This document outlines the notes taken throughout research process.

The interactions between tumor progression, drug concentration, and patient population drive the proposed initial conditions, which are tailored according to the patient's disease stage and patient profile. This modeling approach optimizes treatment plans by simulating various scenarios and predicting treatment efficacy for individual patient populations.


## ODE.parameters.md
This markdown file outlines the parameters, initial conditions, and constants used in our system of ordinary differential equations for modeling the dynamics between tumor cells (T), CTL cells (L), and natural killer cells (N). 

Provided are the following components:
- *Initial conditions* for the populations of tumor cells, CTL cells, and NK cells
- *Model parameters* such as growth rates, interaction coefficients, drug coefficients, and decay rates for tumor and immune cell populations.

This supplement helps define the mathematical framework for studying tumor-immune interactions, serving as a reference for adjusting the model according to real-world data.

## paramter.selection.md
This document outlines the parameters used in our system of ordinary differential equations (ODEs) for modeling the interactions between cell populations $N$ (Natural Killer Cells), $L$ (CTL Cells), $T$ (Tumor Cells), whilst incorporating a drug interaction term $D$ (Drug Concentration). The model incorporates various tumor stages and treatment strategies, which are critical for defining initial conditions and simulating the progression of Neuroblastoma over time.