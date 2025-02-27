## Patient Population & Pharmacology

This document outlines the parameters used in our system of ordinary differential equations (ODEs) for modeling the interactions between cell populations $N$ (Natural Killer Cells), $L$ (CTL Cells), $T$ (Tumor Cells), whilst incorporating a drug interaction term $D$ (Drug Concentration). The model incorporates various tumor stages and treatment strategies, which are critical for defining initial conditions and simulating the progression of Neuroblastoma over time.

The interactions between tumor progression, drug concentration, and patient population drive the proposed initial conditions, which are tailored according to the patient's disease stage and patient profile. This modeling approach optimizes treatment plans by simulating various scenarios and predicting treatment efficacy for individual patient populations.

### Patient Populations

Our approach to modeling the immunotherapeutic dynamics of neuroblastoma is built upon the International Neuroblastoma Risk Group Staging System (INRGSS). The use of the INRGSS and its corresponding risk classification (INRG) has greatly enhanced the ability to compare risk-based clinical trials conducted across different regions of the world (Monclair et al., 2009). In this study, we utilize this system to differentiate patient populations, capitalizing on its effectiveness in enabling the comparison of clinical trials conducted globally.

**Stage L1:**
Stage L1 tumors are localized and confined to one body compartment (neck, chest, abdomen, or pelvis), without involvement of vital structures as defined by the list of IDRFs. An isolated finding of intraspinal tumor extension that does not meet the criteria for an IDRF is also classified as stage L1 (Monclair et al., 2009).

**Stage L2:**
Stage L2 tumors are locoregional and may extend ipsilaterally within body compartments. For example, a left-sided abdominal tumor with left-sided chest involvement is classified as stage L2. However, a tumor that involves both sides of the body, such as a left-sided abdominal tumor with right-sided chest involvement (or vice versa), is considered a metastatic disease (Monclair et al., 2009).

**Stage M:**
Stage M indicates distant metastatic disease, meaning the tumor is not contiguous with the primary tumor, except as defined for stage MS. Nonregional lymph node involvement is classified as metastatic disease. However, tumors with enlarged lymph nodes in nonregional sites such as an upper abdominal tumor with enlarged lower mediastinal nodes or a pelvic tumor with inguinal lymph node involvement are still considered locoregional disease. Ascites and pleural effusion, even with malignant cells, are not classified as metastatic unless they are distant from the primary tumor's body compartment (Monclair et al., 2009).

**Stage MS:**
Stage MS is metastatic disease found in patients younger than 18 months with metastases confined to the skin, liver, and/or bone marrow. Bone marrow involvement must be limited to less than 10 percent of total nucleated cells, as seen on smears or biopsy. MIBG scintigraphy must be negative in bone and bone marrow. The primary tumor may be classified as either L1 or L2, with no restrictions regarding crossing or infiltration of the midline (Monclair et al., 2009).

| **Stage** | **Description**                                                                                         | **Source**               |
|-----------|---------------------------------------------------------------------------------------------------------|--------------------------|
| **L1**    | Localized tumors confined to one body compartment (neck, chest, abdomen, or pelvis) without IDRF involvement. Intraspinal tumor extension not fulfilling IDRF criteria is also L1. | (Monclair et al., 2009)   |
| **L2**    | Locoregional tumors with one or more IDRFs. Tumors may be ipsilateral within body compartments. Bilateral involvement (ex. left-sided abdominal tumor with right-sided chest) is metastatic. | (Monclair et al., 2009)   |
| **M**     | Distant metastatic disease. Nonregional lymph node involvement is metastatic. Tumors with ascites/pleural effusion with malignant cells are not metastatic unless distant from the primary tumor. | (Monclair et al., 2009)   |
| **MS**    | Metastatic disease in patients under 18 months with metastases confined to skin, liver, and/or bone marrow. Bone marrow involvement should be <10 Percent. MIBG scintigraphy must be negative in bone/marrow. Primary tumor can be L1 or L2. | (Monclair et al., 2009)   |

The interpretation of neuroblastoma staging and risk classification involves both tumor stage and biological factors. Stage L1 is generally associated with **low-risk** disease, as it involves localized tumors confined to one body compartment. Stage L2, which includes regional tumors with one or more IDRFs, is considered **intermediate risk**, as it may require more aggressive treatment but still has a relatively favorable prognosis. Stage M, representing distant metastatic disease, is classified as **high risk** due to the advanced spread of the tumor. Additionally, Stage MS can present variable risk depending on factors like age and metastasis location, often requiring tailored treatment approaches (Tolbert and Matthay, 2018).

| **Risk Category** | **Description**                                                                                                                                                                    | **Source**                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| **Low Risk**      | Patients with **L1** (localized tumors in one area) or **MS** (asymptomatic with favorable biology and metastases limited to skin, liver, or bone marrow) are considered low risk. These patients typically require observation, with surgery or chemotherapy only if symptoms arise. | Tolbert & Matthay, 2018   |
| **Medium Risk**   | **L2** (regional tumors with IDRFs) and **MS** with unfavorable biology (e.g., diploidy) are classified as intermediate risk. These tumors may need chemotherapy, with surgery recommended if possible. | Tolbert & Matthay, 2018   |
| **High Risk**     | **M** (distant metastases), **MS** with MYCN amplification, or **L2** in patients over 18 months with unfavorable features are high risk. These patients require aggressive treatment including chemotherapy, surgery, and stem cell therapy. | Tolbert & Matthay, 2018   |

To establish the initial conditions for our mathematical model, we differentiated three distinct patient populations—low-risk, medium-risk, and high-risk—based on tumor stage and biological factors. We then derived the relative abundance of tumor cells, CTLs, and NK cells for each patient population from the literature, ensuring that the initial conditions capture the clinical variability in immune cell populations and tumor response across the different risk groups, with a particular emphasis on relative ratios. 

### Parameters for the **Low Risk** patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | TBD       | source         |
| **L₀**        | cells               | initial amount of cells          | TBD         |  source         |
| **T₀**        | cells               | Initial amount of cells          | TBD    | source         |
| **D₀**        | cells               | dose of a specific drug       | TBD       | source         |

The low-risk population has a relatively low tumor cell count and strong immune responses, with NK cells providing immediate defense as part of the innate immune system. While CTLs, which are part of the adaptive immune response, offer a more targeted and long-term defense, they are present in lower quantities compared to NK cells.

### Parameters for the **Intermediate Risk** patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | TBD       | source         |
| **L₀**        | cells               | initial amount of cells          | TBD       |  source         |
| **T₀**        | cells               | Initial amount of cells          | TBD     | source         |
| **D₀**        | cells               | dose of a specific drug       | TBD       | source         |

The intermediate-risk population has a higher tumor cell count than low-risk patients, leading to a more prominent role for CTLs in the immune response. Though NK cells still provide an initial response, the increased presence of tumor cells requires a more coordinated and adaptive immune response, with CTLs becoming more critical in targeting and eliminating the growing tumor cells.

### Parameters for the **High Risk** patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | TBD       | source         |
| **L₀**        | cells               | initial amount of cells          | TBD       |  source         |
| **T₀**        | cells               | Initial amount of cells          | TBD     | source         |
| **D₀**        | cells               | dose of a specific drug       | TBD       | source         |

In the high-risk population, the tumor cell count is higher, and the immune system faces greater challenges. NK cells provide the first line of defense, but CTLs are essential for long-term tumor control, especially as they can target specific antigens and provide a more sustained immune response against the rapidly growing tumor cells.

### Cell Biology Notes

#### Turnover and proliferation of NK cells in steady state and lymphopenic conditions (Jamieson et al., 2004)

> "The proliferation rate of NK cells in the body generally remains constant. However, studies have shown that homeostatic regulation can restore proliferation to normal levels when deviations occur."

> "The data confirm that most splenic NK cells in adults are not dividing rapidly. However, we did detect a small cycling splenic NK population in steady-state conditions, suggesting either that a small NK subset is rapidly dividing or that many NK cells divide infrequently. One of our most interesting findings was that splenic NK cells undergo homeostatic proliferation, as shown by the much greater proliferation. The results suggest that the lymphocyte count in the animal is somehow used as a sensor, such that NK cell proliferation is induced when lymphocyte counts are low. This mechanism may serve to rapidly expand NK cell counts back to normal in animals suffering from lymphoid cell depletion."  
> — *Jamieson et al., 2004*


#### Advances in NK cell production (Fang et al., 2022)

> "However, the lifespan of activated NK cells in vivo is approximately 7 days, and transferred in vitro-activated NK cells can persist for 7 to 22 days in vivo, both of which are still lower than the lifespan of effector CD8+ T cells and memory CD8+ T cells in vivo (approximately 2–3 weeks to months). Moreover, the doubling time of NK cells in response to stimulation is approximately 1.5 days; in contrast, naïve T cells can rapidly divide, undergoing 15 divisions within 7 days and having a doubling time of approximately 10 hours in response to stimulation. These characteristics of NK cells highlight that the optimal regimens and indications for NK cell therapy are different from those of T cell therapy."  

> "However, the correlation of NK cell number and proportion with disease prognosis varies across tumor types..."  

> "The sensitivity of NK cells versus CD8+ T cells to chemotherapeutic drugs or radiotherapy: After the first course of treatment with most chemotherapeutic drugs, such as docetaxel, 5-FU, CPT-11, fludarabine, and cyclophosphamide, NK cells and CD8+ T cells decrease slightly or significantly, but these two types of cells do not show a difference in sensitivity to chemotherapeutic drugs. However, after the second course of docetaxel administration, a further decrease in the absolute number of CD8+ T cells, but not NK cells, is observed [43]. Therefore, the sensitivity of NK cells and T cells to chemotherapy drugs is not significantly different in the early stage of chemotherapy."  

> "Proliferation in vivo: Approximately 5.1 percent of CD8+ T cells proliferate per day, resulting in an average doubling time of 14 days in the resting state. After activation, T cells enter the rapid proliferation phase, and approximately 46.8 percent of CD8+ T cells proliferate per day, equivalent to a doubling time of 1.5 days. The proliferation rate is approximately 10 times higher than that of resting T cells. However, the mean percentage of proliferative NK cells in healthy individuals is 4.3 ± 2.4 percent per day (equivalent to a doubling time of 16 days), increasing to approximately 5.7 percent per day after infection. Studies have also identified numerous NK and T cell receptors and downstream signaling molecules, demonstrating that NK cell expansion is limited to approximately 1,000-fold, whereas T cell expansion can exceed 50,000-fold for certain epitopes."  

#### Mathematical Models of Tumor Cell Proliferation: A Review of the Literature (Jarrett et al., 2018)

> "One approach to mathematical modeling of proliferation is to employ 'continuum' models that treat the quantities of a system (e.g., tumor cell population or nutrient concentrations) as smooth fields. The two major forms of continuum models are ordinary and partial differential equations (ODEs and PDEs, respectively). ODE models are commonly employed to represent the rates of production and consumption of molecular species. These models assume that the cellular microenvironment is uniform, which is a fundamental limitation of the approach; however, this assumption does make ODE modeling more easily integrated with the data types frequently gathered from biological assays."  

> "Initially, exponential growth models were used, but as in vitro cancer cell population data was collected, it became clear that exponential growth was not an appropriate choice for accurately describing cancer progression beyond only the earliest phases of population growth. Later, Gompertzian and logistic growth were found to represent cellular population data more accurately, as these models contained additional free parameters (relative to exponential growth) that could capture the notion of a 'carrying capacity' (i.e., the maximum number of cells a system can support)."  

> "ODE models that consider cancer proliferation and the immune response generally focus on T cell binding and chemical signaling between immune and tumor cells [86, 87, 88]. A current limitation of such models is that they require detailed and temporally refined data for calibration and validation, which are extraordinarily difficult to measure in an intact system with routinely available methods. Therefore, some efforts have attempted to reduce these systems into more tractable compartments designed to answer specific biological questions of tumor cell growth. For example, it can be shown, using a simplified system of ODEs focusing on the interactions of natural killer cells and cytotoxic T lymphocytes (CTLs), that the presence of an immune component is essential for suppressing tumor cell proliferation."  

> "For mathematical modeling to be of clinical relevance, the models developed must be of a form that can utilize clinically available data."  


### Pharmacology
A systematic pharmacological review of the literature spanning from 2011 to 2020 identified the three most common types of immunotherapeutic approaches for neuroblastoma treatment: chemotherapy, and monoclonal and non-antibody based immunotherapies (Nader et al., 2022). This analysis was conducted across 192 clinical trials involving pediatric patients only under 18 years of age, spanning from patient populations in the low-risk to high-risk groups. The trials, sourced from Nader's work, utilized publicly available registries in the United States and the European Union, including platforms such as ClinicalTrials.gov, Clinicaltrialregister.eu, PubMed, and the American Society of Clinical Oncology annual meeting collection. The evaluation provided a comprehensive overview of neuroblastoma therapeutic trials, offering valuable insights into evolving treatment trends and therapeutic approaches from 2011 to 2020.

### Chemotherapy Dosing
"Doctors give chemo in cycles. Treatment is given for a few days in a row, followed by time off to allow the body time to recover. The cycles are typically repeated every 3 or 4 weeks. The total length of treatment depends on which risk group the child is in – higher risk groups usually require longer treatment (ACS, 2025)."

### Chemotherapeutic Drugs Used For The Treatment of Neuroblastoma (NIH, 2025).
- Cyclophosphamide
- Vincristine
- Doxorubicin (Adriamycin)
- Cisplatin 

#### Cisplatin (Chemotherapy - Platinum Based)
Cisplatin is one of the most common first-line therapeutic agents used for the treatment of various cancer causing tumors (Donzelli et al., 2004).

### Literature Cited
Donzelli, E., Carfì, M., Miloso, M., Strada, A., Galbiati, S., Bayssas, M., Griffon-Etienne, G., Cavaletti, G., Grazia Petruccioli, M., & Tredici, G. (2004). Neurotoxicity of platinum compounds: Comparison of the effects of Cisplatin and oxaliplatin on the human neuroblastoma cell line SH-SY5Y. Journal of Neuro-Oncology, 67(1/2), 65–73. 

Fang, F., Xie, S., Chen, M., Li, Y., Yue, J., Ma, J., Shu, X., He, Y., Xiao, W., & Tian, Z. (2022). Advances in NK cell production. Cellular &amp; Molecular Immunology, 19(4), 460–481. 

Jamieson, A. M., Isnard, P., Dorfman, J. R., Coles, M. C., & Raulet, D. H. (2004). Turnover and proliferation of NK cells in steady state and lymphopenic conditions. The Journal of Immunology, 172(2), 864–870.

Jarrett, A. M., Lima, E. A. B. F., Hormuth, D. A., McKenna, M. T., Feng, X., Ekrut, D. A., Resende, A. C., Brock, A., & Yankeelov, T. E. (2018). Mathematical models of Tumor Cell Proliferation: A review of the literature. Expert Review of Anticancer Therapy, 18(12), 1271–1286. 

Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Nader, J. H., Bourgeois, F., Bagatell, R., Moreno, L., Pearson, A. D., & DuBois, S. G. (2022). Systematic review of clinical drug development activities for neuroblastoma from 2011 to 2020. Pediatric Blood &amp; Cancer, 70(5).

Neuroblastoma chemotherapy and related drugs: Neuroblastoma treatment. Neuroblastoma Chemotherapy and Related Drugs | Neuroblastoma Treatment | American Cancer Society. (n.d.). https://www.cancer.org/cancer/types/neuroblastoma/treating/chemotherapy.html#:~:text=The%20most%20common%20combination%20of,be%20given%20at%20higher%20doses. 

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.




