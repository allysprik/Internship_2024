# Model folder readme file
Author: Ally Sprik \
Last edit: 2024-02-26

## Description
This  folder contains the files I used to generate the variations of the model for the internship. 

## Instructions for network generation
1. <b>For all files:</b> Define the postfix variable at the top of the file, to define the postfix for the model name. 
2. Make sure you run `R_WP_train.rmd` <b>first</b>, as this file generates the local training tables for the models, which are used in for imaging MI and TCGA nodes. 
3. The order of the other models are not important.

## Files
- `CPT_files` folder: This folder is a place to store the generated CPT files for locally learned nodes.
- `Fitted_networks` folder: This folder contains the fitted networks for the models.
- `Network creation` folder: This folder contains the network files for the models.
  - `R_Add_MRIMI.rmd`: This file contains the code to generate the model without platelets but with the imaging MI node.
  - `R_Add_MRIMI_TCGA.rmd`: This file contains the code to generate the model without platets, with the imaging MI node and with the TCGA data.
  - `R_Add_TCGA.rmd`: This file contains the code to generate several variations of the model without platelets but with the TCGA data.
  - `R_Original_Train.rmd`: This file contains the code to generate the model without platelets and without the additions.
  - `R_WP_Train.rmd`: This file generates the models with platelets and with and without various additions. This file also creates the local training tables for the models, which are used in for imaging MI and TCGA nodes.