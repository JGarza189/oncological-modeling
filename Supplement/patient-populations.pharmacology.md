## Patient Population & Pharmacology

This section outlines the parameters used in the system of ordinary differential equations for modeling the interaction between populations $N$, $L$, $D$, and $T$.

### Patient Populations

Our approach to modeling the immunotherapeutic dynamics of neuroblastoma is built upon the International Neuroblastoma Risk Group Staging System (INRGSS). The use of the INRGSS and its corresponding risk classification (INRG) has greatly enhanced the ability to compare risk-based clinical trials conducted across different regions of the world (Monclair et al., 2009). In this study, we utilize this system to differentiate patient populations, capitalizing on its effectiveness in enabling the comparison of clinical trials conducted globally.

**Stage L1:**
Stage L1 tumors are localized and confined to one body compartment (neck, chest, abdomen, or pelvis), without involvement of vital structures as defined by the list of IDRFs (Table 1). An isolated finding of intraspinal tumor extension that does not meet the criteria for an IDRF is also classified as stage L1 (Monclair et al., 2009).

**Stage L2:**
Stage L2 tumors are locoregional and involve one or more IDRFs. These tumors may extend ipsilaterally within body compartments. For example, a left-sided abdominal tumor with left-sided chest involvement is classified as stage L2. However, a tumor that involves both sides of the body, such as a left-sided abdominal tumor with right-sided chest involvement (or vice versa), is considered metastatic disease (Monclair et al., 2009).

**Stage M:**
Stage M indicates distant metastatic disease, meaning the tumor is not contiguous with the primary tumor, except as defined for stage MS. Nonregional lymph node involvement is classified as metastatic disease. However, tumors with enlarged lymph nodes in nonregional sites—such as an upper abdominal tumor with enlarged lower mediastinal nodes or a pelvic tumor with inguinal lymph node involvement—are still considered locoregional disease. Ascites and pleural effusion, even with malignant cells, are not classified as metastatic unless they are distant from the primary tumor's body compartment (Monclair et al., 2009).

**Stage MS:**
Stage MS is metastatic disease found in patients younger than 18 months (547 days) with metastases confined to the skin, liver, and/or bone marrow. Bone marrow involvement must be limited to less than 10 percent of total nucleated cells, as seen on smears or biopsy. MIBG scintigraphy must be negative in bone and bone marrow. If there is MIBG uptake in the primary tumor, bone scans are not required. The primary tumor may be classified as either L1 or L2, with no restrictions regarding crossing or infiltration of the midline (Monclair et al., 2009).

| **Stage** | **Description**                                                                                         | **Source**               |
|-----------|---------------------------------------------------------------------------------------------------------|--------------------------|
| **L1**    | Localized tumors confined to one body compartment (neck, chest, abdomen, or pelvis) without IDRF involvement. Intraspinal tumor extension not fulfilling IDRF criteria is also L1. | (Monclair et al., 2009)   |
| **L2**    | Locoregional tumors with one or more IDRFs. Tumors may be ipsilateral within body compartments. Bilateral involvement (e.g., left-sided abdominal tumor with right-sided chest) is metastatic. | (Monclair et al., 2009)   |
| **M**     | Distant metastatic disease. Nonregional lymph node involvement is metastatic. Tumors with ascites/pleural effusion with malignant cells are not metastatic unless distant from the primary tumor. | (Monclair et al., 2009)   |
| **MS**    | Metastatic disease in patients under 18 months with metastases confined to skin, liver, and/or bone marrow. Bone marrow involvement should be <10 Percent. MIBG scintigraphy must be negative in bone/marrow. Primary tumor can be L1 or L2. | (Monclair et al., 2009)   |


The interpretation of neuroblastoma staging and risk classification involves both tumor stage and biological factors. Stage L1 is generally associated with **low-risk** disease, as it involves localized tumors confined to one body compartment. Stage L2, which includes regional tumors with one or more IDRFs, is considered **intermediate risk**, as it may require more aggressive treatment but still has a relatively favorable prognosis. Stage M, representing distant metastatic disease, is classified as **high risk** due to the advanced spread of the tumor. Additionally, Stage MS can present variable risk depending on factors like age and metastasis location, often requiring tailored treatment approaches (Tolbert and Matthay, 2018).

| **Risk Category** | **Description**                                                                                                                                                                    | **Source**                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| **Low Risk**      | Patients with **L1** (localized tumors in one area) or **MS** (asymptomatic with favorable biology and metastases limited to skin, liver, or bone marrow) are considered low risk. These patients typically require observation, with surgery or chemotherapy only if symptoms arise. | Tolbert & Matthay, 2018   |
| **Medium Risk**   | **L2** (regional tumors with IDRFs) and **MS** with unfavorable biology (e.g., diploidy) are classified as intermediate risk. These tumors may need chemotherapy, with surgery recommended if possible. | Tolbert & Matthay, 2018   |
| **High Risk**     | **M** (distant metastases), **MS** with MYCN amplification, or **L2** in patients over 18 months with unfavorable features are high risk. These patients require aggressive treatment including chemotherapy, surgery, and stem cell therapy. | Tolbert & Matthay, 2018   |



### Parameters for the (Low Risk) patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | 0.5       | source         |
| **L₀**        | cells               | initial amount of cells          | 0.1       |  source         |
| **T₀**        | cells               | Initial amount of cells          | 0.02     | source         |
| **D₀**        | cells               | dose of a specific drug       | 0.1       | source         |

### Parameters for the (Intermediate Risk) patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | 0.5       | source         |
| **L₀**        | cells               | initial amount of cells          | 0.1       |  source         |
| **T₀**        | cells               | Initial amount of cells          | 0.02     | source         |
| **D₀**        | cells               | dose of a specific drug       | 0.1       | source         |


### Parameters for the (High Risk) patient population
| **Parameter** | **Unit**          | **Description**          | **Value** | **Source**   |
|---------------|--------------------|------------------------------------|-----------|------------------|
| **N₀**        | cells               | initial amount of cells          | 0.5       | source         |
| **L₀**        | cells               | initial amount of cells          | 0.1       |  source         |
| **T₀**        | cells               | Initial amount of cells          | 0.02     | source         |
| **D₀**        | cells               | dose of a specific drug       | 0.1       | source         |


### Pharmacology
A systematic pharmacological review of the literature spanning from 2011 to 2020 identified the three most common types of immunotherapeutic therapies for neuroblastoma treatment: chemotherapy, and monoclonal and non-antibody based immunotherapies (Nader et al., 2022). This analysis was conducted across 192 clinical trials involving pediatric patients under 18 years of age, spanning from patient populations in phase 1 to phase 3. The trials, sourced from Nader's work, utilized publicly available registries in the United States and the European Union, including platforms such as ClinicalTrials.gov, Clinicaltrialregister.eu, PubMed, and the American Society of Clinical Oncology (ASCO) annual meeting collection. The evaluation provided a comprehensive overview of neuroblastoma therapeutic trials, offering valuable insights into evolving treatment trends and therapeutic approaches from 2011 to 2020.

For our study, we chose to model the effects of two common drugs. In patiuclar, we incorpated the effects of 


### Chemotherapeutic Drugs Used For The Treatment of Neuroblastoma (American Cancer Society, 2025) (NIH, 2025).

- Cyclophosphamide
- Vincristine
- Doxorubicin (Adriamycin)
- Cisplatin 

"Doctors give chemo in cycles. Treatment is given for a few days in a row, followed by time off to allow the body time to recover. The cycles are typically repeated every 3 or 4 weeks. The total length of treatment depends on which risk group the child is in – higher risk groups usually require longer treatment (ACS, 2025)."

#### Cisplatin (Chemotherapy - Platinum Based)
Cisplatin is one of the most common first-line therapeutic agents used for the treatment of various cancer causing tumors (Donzelli et al., 2004).

### Literature Cited

Donzelli, E., Carfì, M., Miloso, M., Strada, A., Galbiati, S., Bayssas, M., Griffon-Etienne, G., Cavaletti, G., Grazia Petruccioli, M., & Tredici, G. (2004). Neurotoxicity of platinum compounds: Comparison of the effects of Cisplatin and oxaliplatin on the human neuroblastoma cell line SH-SY5Y. Journal of Neuro-Oncology, 67(1/2), 65–73. 

Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Nader, J. H., Bourgeois, F., Bagatell, R., Moreno, L., Pearson, A. D., & DuBois, S. G. (2022). Systematic review of clinical drug development activities for neuroblastoma from 2011 to 2020. Pediatric Blood &amp; Cancer, 70(5).

Neuroblastoma chemotherapy and related drugs: Neuroblastoma treatment. Neuroblastoma Chemotherapy and Related Drugs | Neuroblastoma Treatment | American Cancer Society. (n.d.). https://www.cancer.org/cancer/types/neuroblastoma/treating/chemotherapy.html#:~:text=The%20most%20common%20combination%20of,be%20given%20at%20higher%20doses. 

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.




