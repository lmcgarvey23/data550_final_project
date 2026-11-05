# Introduction

## The Data
The data used in this project come from the Heart Disease dataset available through the UCI Machine Learning Repository. The dataset contains information on 303 patients, including demographic and health-related characteristics such as age, sex, chest pain type, resting blood pressure, cholesterol, maximum heart rate, and heart disease status. The goal of this analysis is to describe the characteristics of the patients in the dataset and examine how selected health characteristics differ between patients with and without heart disease. I will use descriptive statistics and visualizations to explore the data.

## Objectives
The objectives of this analysis are to:
1. Load and inspect the Heart Disease dataset.
2. Describe the characteristics of patients with and without heart disease.
3. Compare selected health characteristics between the two groups.
4. Visualize differences in age by heart disease status.

## Repository structure

├── Makefile                      
├── README.md
├── code/
│   ├── 01_clean_data.R          
│   ├── 02_make_table.R         
│   └── 03_make_figure.R         
├── output/                       
|   ├── class_counts.rds          
│   ├── figure1_age_boxplot.png  
│   ├── heart_clean.rds
│   └── table1.rds
└── report/
    └── final_report.Rmd          

# Code Description

`code/01_clean_data.R`
- reads the raw data in `data/processed.cleveland.data`
- adds descriptive column names
- creates the two-level `heart_disease` variable from `num` (0 = "No heart disease", >0 = "Heart disease")
- saves the cleaned data as `output/heart_clean.rds`

`code/02_make_table.R` (**creates the required table**)
- reads the cleaned data saved by `code/01_clean_data.R`
- creates the overview table of patient counts and percentages by heart disease status
- creates Table 1, the mean age, cholesterol, resting blood pressure, and maximum heart rate by heart disease status
- saves the tables as `output/class_counts.rds` and `output/table1.rds`

`code/03_make_figure.R` (**creates the required figure**)
- reads the cleaned data saved by `code/01_clean_data.R`
- makes Figure 1, a boxplot of age by heart disease status
- saves the figure as `output/figure1_age_boxplot.png`

`report/final_report.Rmd`
- loads the tables and figure saved by the three scripts above
- displays the overview table, Table 1, and Figure 1 with short descriptions
- renders to `report/final_report.html`

`Makefile`
- contains the rules that run each script in order and build the final report