## Parameter Selection

This document outlines the parameters used in our system of ordinary differential equations (ODEs) for modeling the interactions between cell populations $N$ (Natural Killer Cells), $L$ (CTL Cells), $T$ (Tumor Cells), whilst incorporating a drug interaction term $D$ (Drug Concentration). The model incorporates various tumor stages and treatment strategies, which are critical for defining initial conditions and simulating the progression of Neuroblastoma over time.

The interactions between tumor progression, drug concentration, and patient population drive the proposed initial conditions, which are tailored according to the patient's disease stage and patient profile. This modeling approach optimizes treatment plans by simulating various scenarios and predicting treatment efficacy for individual patient populations.

### Patient Populations

Our approach to modeling the immunotherapeutic dynamics of neuroblastoma is built upon the International Neuroblastoma Risk Group Staging System (INRGSS). The use of the INRGSS and its corresponding risk classification (INRG) has greatly enhanced the ability to compare risk-based clinical trials conducted across different regions of the world (Monclair et al., 2009). In this study, we utilize this system to differentiate patient populations, capitalizing on its effectiveness in enabling the comparison of clinical trials conducted globally.

| **Risk Category** | **Description**                                                                                                                                                                    | **Source**                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| **Low Risk**      | Patients with **L1** (localized tumors in one area) or **MS** (asymptomatic with favorable biology and metastases limited to skin, liver, or bone marrow) are considered low risk. These patients typically require observation, with surgery or chemotherapy only if symptoms arise. | Tolbert & Matthay, 2018   |
| **Medium Risk**   | **L2** (regional tumors with IDRFs) and **MS** with unfavorable biology (e.g., diploidy) are classified as intermediate risk. These tumors may need chemotherapy, with surgery recommended if possible. | Tolbert & Matthay, 2018   |
| **High Risk**     | **M** (distant metastases), **MS** with MYCN amplification, or **L2** in patients over 18 months with unfavorable features are high risk. These patients require aggressive treatment including chemotherapy, surgery, and stem cell therapy. | Tolbert & Matthay, 2018   |

To establish the initial conditions for our mathematical model, we differentiated three distinct patient populations—low-risk, medium-risk, and high-risk—based on tumor stage and biological factors. We then derived the relative abundance of tumor cells, CTLs, and NK cells for each patient population from the literature, ensuring that the initial conditions capture the clinical variability in immune cell populations and tumor response across the different risk groups, with a particular emphasis on relative ratios. 

### Parameters for Different Patient Populations

| **Parameter** | **Unit** | **Low Risk** | **Intermediate Risk** | **High Risk** | **Description**                           | **Source** |
|---------------|----------|--------------|-----------------------|---------------|-------------------------------------------|------------|
| **N₀**        | cells    | 10           | 10                    | 7             | Initial amount of NK cells             | source     |
| **L₀**        | cells    | 1            | 5                     | 10            | Initial amount of tumor cells                    | source     |
| **T₀**        | cells    | 1            | 10                    | 100           | Initial amount of CTL cells                | source     |
| **D₀**        | cells    | TBD          | TBD                   | TBD           | Dose of a specific drug                   | source     |


In the high-risk population, the tumor cell count is higher, and the immune system faces greater challenges. NK cells provide the first line of defense, but CTLs are essential for long-term tumor control, especially as they can target specific antigens and provide a more sustained immune response against the rapidly growing tumor cells.

## Pharmacology
A systematic pharmacological review of the literature spanning from 2011 to 2020 identified the three most common types of immunotherapeutic approaches for neuroblastoma treatment: chemotherapy, and monoclonal and non-antibody based immunotherapies (Nader et al., 2022). This analysis was conducted across 192 clinical trials involving pediatric patients only under 18 years of age, spanning from patient populations in the low-risk to high-risk groups. The trials, sourced from Nader's work, utilized publicly available registries in the United States and the European Union, including platforms such as ClinicalTrials.gov, Clinicaltrialregister.eu, PubMed, and the American Society of Clinical Oncology annual meeting collection. The evaluation provided a comprehensive overview of neuroblastoma therapeutic trials, offering valuable insights into evolving treatment trends and therapeutic approaches from 2011 to 2020.

## Chemotherapy and Immunotherapy Agents Used in Our Model for Neuroblastoma Progression

### Cyclophosphamide
Cyclophosphamide is a widely used chemotherapy drug that works by interfering with DNA replication, leading to the destruction of rapidly dividing cells, including cancer cells. It is commonly used in the treatment of Neuroblastoma and other malignancies due to its potent cytotoxic effects. In addition to directly targeting tumor cells, Cyclophosphamide can modulate the immune system by depleting regulatory T cells, potentially enhancing the effectiveness of immunotherapy. However, its use is associated with dose-dependent side effects, including immunosuppression and toxicity to healthy tissues (McCune et al., 2009).

#### Association between CYP2B6 genetic variability and cyclophosphamide therapy in pediatric patients with neuroblastoma (Mango et al., 2023)

>"Cyclophosphamide, an oxazaphosphorine prodrug is frequently used in treatment of neuroblastoma, which is one of the most prevalent solid organ malignancies in infants and young children."

#### A Comparative Study of the Antiproliferative and Apoptotic Effects of Some Chemotherapeutic Drugs on Neuroblastoma Cells (Turgut, 2023).

>" In the present study, the cytotoxic and apoptotic effects of five different drugs approved by the US Food and Drug Administration (FDA), which are used in various cancer treatments, on neuroblastoma cells were comparatively investigated. Cisplatin and cyclophosphamide were used as references because these drugs are the backbone of current clinical protocols for the treatment of neuroblastoma."

>" In conclusion, in the present study, it was determined that some cancer drugs (cisplatin, cyclophosphamide, nivolumab, cetuximab, and gemcitabine) have antiproliferative and apoptotic effects on SH-SY5Y neuroblastoma cells."

### Interleukin-2 (IL-2)
Interleukin-2 (IL-2) is a cytokine that plays a crucial role in regulating the immune response by promoting the proliferation and activation of natural killer (NK) cells and cytotoxic T lymphocytes (CTLs). It is essential for immune system function and has been explored as an immunotherapy for various cancers, including Neuroblastoma. IL-2 enhances the body's ability to target and destroy tumor cells by stimulating immune cell growth and activity. Clinically, it has been used in high-dose regimens for metastatic cancers, though its application is often limited by toxicity and side effects (Barker et al., 2007).

#### Natural Killer Cell–Mediated Eradication of Neuroblastoma Metastases to Bone Marrow by Targeted Interleukin-2 Therapy (Lode et al., 1998)

> "In summary, we show here that NK cells stimulated by the ch14.18–IL-2 fusion protein can effectively suppress tumor dissemination and growth and effectively eradicate established bone marrow metastasis in a syngeneic model of neuroblastoma in A/J mice. The mechanism responsible for this antitumor effect proved to be exclusively dependent on NK cells. Taken together, our preclinical data described here suggest that the application of the ch14.18–IL-2 fusion protein in an adjuvant setting may lead to further improvement in the treatment of neuroblastoma patients with minimal residual disease"

>"Because stimulated NK cells proved to be very effective in our animal model in the absence of a memory immune response, multiple treatments with the ch14.18–IL-2 fusion protein may well be required to achieve optimal antitumor responses in neuroblastoma patients."

>"The availability of effective adjuvant treatment for neuroblastoma in the postchemotherapy and transplant phase remains as a major challenge in pediatric hematology/oncology. In this regard, the effectiveness of the ch14.18–IL-2 fusion protein is striking, especially in view of the effector mechanism involved. Thus, we could clearly show in vivo and in vitro that the ch14.18–IL-2 fusion protein stimulates a cellular antitumor response exclusively mediated by NK cells."

#### Induced immunity by expression of interleukin-2 or GM-CSF gene in murine neuroblastoma cells can generate antitumor response to established tumors (Yoshida et al., 1999).

>"The expression of cytokine gene(s) in tumor cells is one possible strategy to induce an antitumor response. Among the various cytokines tested previously for their ability to induce antitumor immunity, interleukin-2 (IL2)-mediated reactions have been investigated extensively,8–10 because IL-2 is required for the proliferation of cytotoxic T cells and for the activation of natural killer (NK) cells."

#### Human Mesenchymal Stem Cells Overexpressing Interleukin 2 Can Suppress Proliferation of Neuroblastoma Cells in Co-Culture and Activate Mononuclear Cells In Vitro (Chulpanova et al., 2020).

>"Interleukin 2 (IL2) is one of the first cytokines which, along with interferon α (IFN-α), was used for the treatment of cancer [1]. IL2 is mainly produced by CD4+ T-cells and plays a vital role in growth as well as differentiation of T-cells, B cells, natural killer (NK) cells, and many other cell types [2]. It is the ability of IL2 to stimulate the proliferation and activation of immune cells with antitumor activity that made it possible to achieve successes in IL2-based immunotherapy of cancer [3]. High-dose (HD) recombinant IL2 therapy has been shown to be effective and has been approved by the Food and Drug Administration (FDA) for the treatment of renal cell carcinoma and metastatic melanoma."

>"The antitumor activity of MSCs expressing various ILs has also been demonstrated. For example, MSCs expressing IL12 increased NK cell infiltration into tumors formed in a mouse model of glioma [25], as well as decreasing metastasis and inducing cancer cell apoptosis in mice modelling ovarian cancer [26]."

>"Changes in cytokine profiles were also determined as a result of IL2 over-expression. The release of CX3CL1, CXCL6, IL8, CCL13, CCL15 and CCL20 was significantly decreased (by 1.5 times) in hADSCs-IL2. These cytokines have been shown to modulate the anti-tumor immune response, the outcome of which can vary from protection against the cancer to promoting the growth of the malignancy. For example, CX3CL1 was shown to enhance the antitumor response by activating NK cells and T-cells [54]."

>"In addition to NK cells, increased NKT-leukocyte populations expressing CD3/CD56 were found in PBMCs cultured in hADSCs-IL2 CM. NKT-cells are cytotoxic against tumors, where killing capacity is independent of the T-cell receptor activation [47]. Other studies have also reported that NKT-cell proliferation is IL2-dependent [108,109]. For example, breast cancer cells expressing IL2 were shown to cause the expansion of NKT-cells in vitro [108]. Furthermore, IL2-secreting fibroblasts were shown to increase the NKT-cell counts in patients with peripheral neuroectodermal tumor and, subsequently tumor cell death [109]. High numbers of CD3+CD56+ NKT cells correlate with the long-term survival of patients with lung and colorectal cancer [110]."

## Cell Biology Notes

#### Turnover and proliferation of NK cells in steady state and lymphopenic conditions (Jamieson et al., 2004)

> "The proliferation rate of NK cells in the body generally remains constant. However, studies have shown that homeostatic regulation can restore proliferation to normal levels when deviations occur."

> "The data confirm that most splenic NK cells in adults are not dividing rapidly. However, we did detect a small cycling splenic NK population in steady-state conditions, suggesting either that a small NK subset is rapidly dividing or that many NK cells divide infrequently. One of our most interesting findings was that splenic NK cells undergo homeostatic proliferation, as shown by the much greater proliferation. The results suggest that the lymphocyte count in the animal is somehow used as a sensor, such that NK cell proliferation is induced when lymphocyte counts are low. This mechanism may serve to rapidly expand NK cell counts back to normal in animals suffering from lymphoid cell depletion."  

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

## Literature Cited
Barker, S. E., Grosse, S. M., Siapati, E. K., Kritz, A., Kinnon, C., Thrasher, A. J., & Hart, S. L. (2007). Immunotherapy for neuroblastoma using syngeneic fibroblasts transfected with il-2 and IL-12. British Journal of Cancer, 97(2), 210–217. 

ÇELİK TURGUT, G. (2023). A comparative study of the antiproliferative and apoptotic effects of some chemotherapeutic drugs on neuroblastoma cells. Bitlis Eren Üniversitesi Fen Bilimleri Dergisi, 12(3), 634–641.

Chulpanova, D. S., Solovyeva, V. V., James, V., Arkhipova, S. S., Gomzikova, M. O., Garanina, E. E., Akhmetzyanova, E. R., Tazetdinova, L. G., Khaiboullina, S. F., & Rizvanov, A. A. (2020). Human mesenchymal stem cells overexpressing interleukin 2 can suppress proliferation of neuroblastoma cells in co-culture and activate mononuclear cells in vitro. Bioengineering, 7(2), 59.

Donzelli, E., Carfì, M., Miloso, M., Strada, A., Galbiati, S., Bayssas, M., Griffon-Etienne, G., Cavaletti, G., Grazia Petruccioli, M., & Tredici, G. (2004). Neurotoxicity of platinum compounds: Comparison of the effects of Cisplatin and oxaliplatin on the human neuroblastoma cell line SH-SY5Y. Journal of Neuro-Oncology, 67(1/2), 65–73. 

Fang, F., Xie, S., Chen, M., Li, Y., Yue, J., Ma, J., Shu, X., He, Y., Xiao, W., & Tian, Z. (2022). Advances in NK cell production. Cellular &amp; Molecular Immunology, 19(4), 460–481. 

Jamieson, A. M., Isnard, P., Dorfman, J. R., Coles, M. C., & Raulet, D. H. (2004). Turnover and proliferation of NK cells in steady state and lymphopenic conditions. The Journal of Immunology, 172(2), 864–870.

Jarrett, A. M., Lima, E. A. B. F., Hormuth, D. A., McKenna, M. T., Feng, X., Ekrut, D. A., Resende, A. C., Brock, A., & Yankeelov, T. E. (2018). Mathematical models of Tumor Cell Proliferation: A review of the literature. Expert Review of Anticancer Therapy, 18(12), 1271–1286. 

Lode, H. N., Xiang, R., Dreier, T., Varki, N. M., Gillies, S. D., & Reisfeld, R. A. (1998). Natural killer cell–mediated eradication of neuroblastoma metastases to bone marrow by targeted interleukin-2 therapy. Blood, 91(5), 1706–1715. 

Mangó, K., Fekete, F., Kiss, Á. F., Erdős, R., Fekete, J. T., Bűdi, T., Bruckner, E., Garami, M., Micsik, T., & Monostory, K. (2023). Association between CYP2B6 genetic variability and cyclophosphamide therapy in pediatric patients with neuroblastoma. Scientific Reports, 13(1). 

McCune, J. S., Salinger, D. H., Vicini, P., Oglesby, C., Blough, D. K., & Park, J. R. (2009). Population pharmacokinetics of cyclophosphamide and metabolites in children with neuroblastoma: A report from the Children’s Oncology Group. The Journal of Clinical Pharmacology, 49(1), 88–102. 

Monclair, T., Brodeur, G. M., Ambros, P. F., Brisse, H. J., Cecchetto, G., Holmes, K., Kaneko, M., London, W. B., Matthay, K. K., Nuchtern, J. G., von Schweinitz, D., Simon, T., Cohn, S. L., & Pearson, A. D. J. (2009). The International Neuroblastoma Risk Group (INRG) staging system: An INRG task force report. Journal of Clinical Oncology, 27(2), 298–303. 

Nader, J. H., Bourgeois, F., Bagatell, R., Moreno, L., Pearson, A. D., & DuBois, S. G. (2022). Systematic review of clinical drug development activities for neuroblastoma from 2011 to 2020. Pediatric Blood &amp; Cancer, 70(5).

Tolbert, V. P., & Matthay, K. K. (2018). Neuroblastoma: Clinical and biological approach to risk stratification and treatment. Cell and Tissue Research, 372(2), 195–209.

Yoshida, H., Tanabe, M., Miyauchi, M., Kawamura, K., Takenaga, K., Ohnuma, N., Sakiyama, S., & Tagawa, M. (1999). Induced immunity by expression of interleukin-2 or GM-CSF gene in murine neuroblastoma cells can generate antitumor response to established tumors. Cancer Gene Therapy, 6(5), 395–401. 



