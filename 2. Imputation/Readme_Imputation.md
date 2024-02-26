# Imputation readme file
Author: Ally Sprik \
Last edit: 2024-02-26

## Description
This  folder contains the files I used to explore and attempt some imputation methods, cleaning them for use in the models. This did not have a prominent place in the eventual thesis, but was an exploration for methods to improve the performance of the model.

## Files
- `BNLearn_EM_Impt.rmd`: R notebook to implement and explore EM imputation on the training dataset
- `Intelligent_Imputation_CA125_MAYO.ipynb`: Notebook to attempt an intelligent CA125 imputation on the MAYO dataset, using the PIPENDO dataset, through a matching algorithm.
- `MAYO_imputation.R`: R file to implement bnlearn imputation using only the MAYO dataset.
- `MAYO_wPIP_Imputation.rmd`: R Notebook to combine PIPENDO and MAYO to impute the whole dataset through the bnlearn package. 
- `MAYO_wPIP_imputation_PREOP.ipynb`: Notebook to impute the MAYO dataset with the PIPENDO dataset using only preoperative variables, using MIDASpy.
- `MAYO_wPIP_Preop_EM.rmd`: Notebook to impute MAYO with the pipendo dataset using the expectation maximization algorithm.
- `MiceForest_Data_Imputation.ipynb`: Notebook to explore the MiceForest imputation method, a MICE random forest package, on the extended training dataset
- `MiceForest_MAYO_PIP_CA125.ipynb`: Notebook to use miceforest to impute the MAYO dataset with the PIPENDO dataset
- `MIDAS_Imputation.ipynb`: Notebook to explore the MIDAS imputation method, a deep  learning autoencoder approach, on the extended training dataset
- `MIDAS_MAYO_PIP_CA125.ipynb`: Notebook to use MIDAS to impute the MAYO dataset with the PIPENDO dataset