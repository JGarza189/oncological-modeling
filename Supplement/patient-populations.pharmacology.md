## Patient Population & Pharmacology

This section outlines the parameters used in the system of ordinary differential equations for modeling the interaction between populations $N$, $L$, $D$, and $T$.

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


### Chemotherapeutic Drugs Used For The Treatment of Neuroblastoma (American Cancer Society, 2025) 

- Cyclophosphamide
- Cisplatin and Carboplatin
- Vincristine
- Doxorubicin (Adriamycin)
- Etoposide
- Topotecan

"Doctors give chemo in cycles. Treatment is given for a few days in a row, followed by time off to allow the body time to recover. The cycles are typically repeated every 3 or 4 weeks. The total length of treatment depends on which risk group the child is in – higher risk groups usually require longer treatment (ACS, 2025)."

#### Cisplatin (Chemotherapy - Platinum Based)
Cisplatin is one of the most common first-line therapeutic agents used for the treatment of various cancer causing tumors (Donzelli et al., 2004).

#### 

### Literature Cited

Donzelli, E., Carfì, M., Miloso, M., Strada, A., Galbiati, S., Bayssas, M., Griffon-Etienne, G., Cavaletti, G., Grazia Petruccioli, M., & Tredici, G. (2004). Neurotoxicity of platinum compounds: Comparison of the effects of Cisplatin and oxaliplatin on the human neuroblastoma cell line SH-SY5Y. Journal of Neuro-Oncology, 67(1/2), 65–73. 

Nader, J. H., Bourgeois, F., Bagatell, R., Moreno, L., Pearson, A. D., & DuBois, S. G. (2022). Systematic review of clinical drug development activities for neuroblastoma from 2011 to 2020. Pediatric Blood &amp; Cancer, 70(5).




