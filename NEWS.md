# alspac 0.49.0

* Bundled variable dictionary moved from `inst/data/current.rdata` to `data/current.rda` and shipped as standard lazy-loaded package data. Fixes the R CMD check warning about the non-standard `inst/data` directory.
* `updateDictionaries()` now writes cached updates to `tools::R_user_dir("alspac", "cache")` instead of into the installed library, so it no longer requires write access to the library and no longer races between users sharing a library.
* The internal `globals` environment is no longer attached to the user's global environment.
* `.onLoad` no longer calls `print()`; `setDataDir()` errors are reported via `packageStartupMessage()`.
* `checkDictionaries()` no longer iterates each dictionary twice and uses `packageStartupMessage()` instead of `cat()`.
* Dictionaries are now loaded on first use if the package has not been attached, so calls such as `alspac::findVars()` work without `library(alspac)`.
* Cached dictionaries are stamped with the package version when saved. A cached `current` dictionary saved by an older version of the package is ignored in favour of the newer bundled dictionary; re-run `updateDictionaries()` to refresh the cache.
* New maintainer function `exportDictionary()` writes the dictionary created by `updateDictionaries()` into a package source checkout's `data/current.rda` for release. Because `updateDictionaries()` no longer writes into the package, this is now a required step when releasing a dictionary update; the release process is documented in the README. Note that bumping the package version in each dictionary release is what causes users' stale personal caches to be superseded.

**Migration note:** users who previously ran `updateDictionaries()` had their cached dictionary written into the installed library. After upgrading, the bundled snapshot will be used until `updateDictionaries()` is re-run; the new cache will live in `tools::R_user_dir("alspac", "cache")`.

# alspac 0.48.9

1. First version release of G1 (YPN) file (Life @32 Questionnaire 2024)
 
- YPN data file: YPN_1a in R:\Data\Current\Quest\Child Completed
- YPN data documentation: D1503_YPN in R:\Data\documentation\built_pdf\Quest\Child Completed

2. First version release of G0 Mothers/Partners Focus@30 clinic data
 
 - F30_G0M_1 data filename: F30_G0M_1a in R:\Data\current\clinic\G0\mother
 - F30_G0M_1 data documentation: D2113_F30_G0M in R:\Data\documentation\built pdf\clinic\G0\mother
 - F30_G0P_1 data filename: F30_G0P_1a in R:\Data\current\clinic\G0\partner
 - F30_G0P_1 data documentation: D2314_F30_G0P in R:\Data\documentation\built pdf\clinic\G0\partner

3. Updated version (v4) of G1 cohort profile 

 - CP data file: CP_4a in R:\Data\current\other\cohort profile\G1
 - CP data documentation: D2435_CP in \Data\documentation\built pdf\other\cohort profile\G1

4. First version release of Twitter (X) data

# alspac 0.48.6

1. First version release of G1 Focus@30 clinic data 
 
- F30_G1 data filename: F30_G1_1a in R:\Data\Current\clinic\G1
- F30_G1 data documentation: D1199_MB in R:\Data\documentation\built pdf\clinic\G1

# alspac 0.48.5

1. First release of G2 based data - cohort profiles and both mother and child based questionnaires

- G2 mother based cohort profile G2motherCP_1 in R:\Data\current\other\cohort profile\mother
- G2 mother enrolmment questionnaire in R:\Data\current\quest\G2\mother
- G2 mother pregnancy questionnaire in R:\Data\current\quest\G2\mother
- G2 mother birth questionnaire in R:\Data\current\quest\G2\mother

- G2 child based cohort profile G2childCP_1 in R:\Data\current\other\cohort profile\child
- G2 child based 6 month questionnaire in R:\Data\current\quest\G2\proxy
- G2 child based 12 month questionnaire in R:\Data\current\quest\G2\proxy
- G2 child based 24 month questionnaire in R:\Data\current\quest\G2\proxy

Other minor changes made to several release files - details will follow shortly

# alspac 0.48.4

1. First version release of G1 (YPM) file (Life @31 Questionnaire 2023)
 
- YPM data file: YPM_1a in R:\Data\Current\Quest\Child Completed\YPM_1a.sav
- YPM data documentation: D1402_YPM in R:\Data\documentation\built_pdf\Quest\Child Completed\D1402_YPM.pdf

2. First version release of G0 Mothers (MB) and Partners (FPF) files (Parents Summer 2022 Questionnaire) 

- MB data filename: MB_1a in R:\Data\Current\Quest\Mother
- MB data documentation: D1199_MB in R:\Data\documentation\built_pdf\Quest\Mother
- FPF data filename: FPF_1a in R:\Data\Current\Quest\Partner
- FPF data documentation: D1202_FPF in R:\Data\documentation\built_pdf\Quest\Partner 

# alspac 0.46.0

1. First version release of G1 (YPL) files (Life@30 Winter 2022 Questionnaire) 

- YPL data filename: YPL_1a in R:\Data\Current\Quest\Child Completed 
- YPL data documentation: D1498_YPL in R:\Data\documentation\built_pdf\Quest\Child Completed

# alspac 0.46.0

1. First version release of G0 Mothers (MA) and Partners (FPE) files (Parents Summer 2022 Questionnaire) 

- MA data filename: MA_1a in R:\Data\Current\Quest\Mother
- MA data documentation: D1194_MA in R:\Data\documentation\built_pdf\Quest\Mother
- FPE data filename: FPE_1a in R:\Data\Current\Quest\Partner
- FPE data documentation: D1295_FPE in R:\Data\documentation\built_pdf\Quest\Partner 

# alspac 0.45.0

1. Updated version release of G0 Mothers (Z) - Parents Questionnaire 2022 
 
Changes - correction to mult-mum cases included and cohort case selection criteria
 
- Z data filename: Z_1b in R:\Data\Current\Quest\Mother
- Z data documentation: D1196_Z.pdf in R:\Data\documentation\built_pdf\Quest\Mother

# alspac 0.43.0

1. G0 Partners (FD) files (Parents 2022 Questionnaire) 

- FD data filename: FD_1a in R:\Data\Current\Quest\Partner
- FD data documentation: D1297_FD in R:\Data\documentation\built_pdf\Quest\Partner

# alspac 0.42.0

1. First version release of G0 Mothers (Z) and Partners (FD) files (Parents 2022 Questionnaire) 

- Z data filename: Z_1a in R:\Data\Current\Quest\Mother
- Z data documentation: D1196_Z in R:\Data\documentation\built_pdf\Quest\Mother
- FD data filename: FD_1a in R:\Data\Current\Quest\Partner
- FD data documentation: D1297_FD in R:\Data\documentation\built_pdf\Quest\Partner 
 
2. Documentation only update to G0 MZ Cohort Profile – addition of the weblink for the published data note
 
- G0 MZ data documentation: D4101_MZ in R:\Data\documentation\built_pdf\Other\Cohort Profile
 
3. Documentation only update to G1 KL data file (Development & Health of my Sons/Daughters).

Contents page updated with explanation of legacy issue regarding error in formatted page numbers
 
- KL data documentation: D1310_KL in R:\Data\documentation\built_pdf\Quest\Child Based
 

# alspac 0.41.0

1. First version release of G1 YPK file (Summer 2022 Questionnaire) 
 
- YPK data filename: YPK_1a in R:\Data\Current\Quest\Child Completed 
- YPK data documentation: D1493_YPK in R:\Data\documentation\built_pdf\Quest\Child Completed  
 
2. Documentation only update to G1 F07 (Focus at 7 Clinic) – correction of error in documentation text with reference to 

Energy intake derived variables, ff7dd400 to f7dd404.

- Incorrectly stated f7dd408 to f7dd412.
- F07 data documentation: D2102_F07 in R:\Data\documentation\built_pdf\Clinic\Child
 
3. Variable label correction to YPF8280 in G1 YPF data file (Life at 26).

Incorrectly labelled as j3b instead of j3a, data file and documentation corrected.
 
- YPF data filename: YPF_3b in R:\Data\Current\Quest\Child Completed
- YPF data documentation: D1430_YPF in R:\Data\documentation\built_pdf\Quest\Child Completed
 
 
4. Erroneous variable removed from FOM2 (Focus on Mothers Clinic 2) data file along with documentation update to incorrect text reference for pQCT variables 
           
Fm1a011 erroneously included (from FOM1 clinic) in FOM2 data file. Text in documentation incorrectly referred to FOM1 hip dxa data in the pQCT derived variable section. The DV's (fm2pq013a to fm2pq280b) are derived from fm2pq007 to fm2pq012.

- FOM2 data filename: FOM2_5b in R:\Data\Current\Clinic\Adult
- FOM2 data documentation: D2202_FOM2 in R:\Data\documentation\built_pdf\Clinic\Mother

# alspac 0.40.1

We are pleased to announce that the following new data is now available on general release:
 
1. Updated derived G1 MRI scan data  
  
- MRI _YP data filename: MRI_YP_2b in R:\Data\Current\Other\Longitudinal 
- MRI _YP data documentation: D2434_MRI_YP in R:\Data\documentation\built_pdf\Other\Longitudinal 
  
2. Addition of section H question H1 and derived variables – YPH file (Life@28+) 
 
Mental health treatment derived data: antidepessant/antipsychotic/anxiolytic medications and medication behaviours. 
 
- YPH data filename: YPH_2a in R:\Data\Current\Quest\Child Completed 
- YPH data documentation: D1491_YPH in R:\Data\documentation\built_pdf\Quest\Child Completed 
  
3. First version release of YPJ file (Life@29+) 
 
- YPJ data filename: YPJ_1a in R:\Data\Current\Quest\Child Completed 
- YPJ data documentation: D1440_YPJ in R:\Data\documentation\built_pdf\Quest\Child Completed  
  
4. Removal of mult_mum variables from the following files: V, Y, COVID1-6, SERO, SERO2, FOM2-4. 
 
The mult_mum variable is used to detect those mothers who have had multiple G1 pregnancies. This variable is now located within the mothers cohort profile file (MZ). 
 

# alspac 0.36.0

MRI_YP 

* Derived data collected from MRI scans taken at ALSPAC Neuroimaging Sub Studies (861 subjects, 495 variables).

CP_3a 

* Enrolment information and basic data on all eligible ALSPAC pregnancies (36 variables).

sero2 

* Data collected from the second serology test (16 variables).

Child_bloods_6b 

* correction to the IL6 data to reflect two types taken from 9yr samples.

COVID5_YP_2a, COVID5_Mum_2a and COVID5_G0Partner_2a

* Updates to Yes/No labels and lower cutpoints added for EPDS and SMF scores for men.

# alspac 0.35.0

COVID6

* This is the latest set of questions relating to COVID for G0 and G1 participants collected during 29th April-12th May 2022. This questionnaire was available in online format only. It was one part of a triple data collection along with a second round of antibody testing and CAMCOG cognitive testing – results for both will be announced separately.

# alspac 0.35.0

COVID5

* This is the latest set of questions relating to COVID for G0 and G1 participants collected during July-December 2021.

# alspac 0.32.0

Child-based Deprivation Indices & urban/rural status

* January timepoints 2015-2021, collection timepoints for: F24, TD, TE, CCXE, CCXF, YPA, YPB, YPC, YPD, YPE, YPF, COVID1, COVID2, COVID3, and IMD2015 tied to all timepoints.

Serology 2 dataset

* This is the results of the second serology test sent out between 9-11th April 2021. Data note with further details is available here: https://wellcomeopenresearch.org/articles/6-283

# alspac 0.27.0

COVID questionnaire data now available

* COVID1_Mum_1a - D1171_COVID1_G0Mum - The G0 mother's COVID1 questionnaire data (457 variables)
* COVID1_G0partner_1a - D1270_COVID1_G0Dad - The G0 partner/father's COVID1 questionnaire data (457 variables).
* COVID1_YP_1a - D1472_COVID1_YP - The G1 YP's COVID1 questionnaire data (459 variables).
* COVID1_YPpartner_1a - D1473_COVID1_YPP - The G1 YP's partner's COVID1 questionnaire data (459 variables). Note that this dataset is not openly available due to low n, but researchers can request it - Please contact ALSPAC if you are interested in using this data.

# alspac 0.14.0

Updates have been made to the following variable collections

* j_5a
* CCT_1b
* T_1c
* n_r1b
* h_6d
* ta_2a
* tc_2a

# alspac 0.12.0

Updates have been made to the following variable collections

* Child_bloods_r3a
* FOM4_2a
* Father_metabolomics_1a
* mum_metabolomics_2a

# alspac 0.10.1

Updates have been made to the following variable collections

* Focus@7
* Focus@8
* Focus@9
* Focus 10
* Focus 11

# alspac 0.9.0

Welcome

* New web application for searching through the ALSPAC phenotype collection
