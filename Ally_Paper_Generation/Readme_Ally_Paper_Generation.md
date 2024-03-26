# Model folder readme file
Author: Ally Sprik \
Last edit: 2024-02-28

## Description
This  folder contains the files I used to generate specific results for my internship thesis. They are more or less named for the specific section they generate results for. Most files use both the Brno and Tubingen dataset, but some only use the Brno dataset when imaging MI data is necessary. 

## Files
- `Addition_MRI.ipynb`: This file contains the code I used to generate the results for the MRI addition section of my thesis. Namely, a comparison of ROC curves for the model with and without the addition of MRI node.
- `Addition_of_extra_patients.ipynb`: This file contains the code I used to generate the results for the addition of extra patients section of my thesis. Namely, a comparison of ROC curves for the model trained on the original dataset and the model trained on the extended training dataset.
- `Addition_TCGA.ipynb`: This file contains the code I used to generate the results for the TCGA addition section of my thesis. Namely, a comparison of ROC curves for the model with and without the addition of TCGA node.
- `Addition_TCGAMRI.ipynb`: This file contains the code I used to generate the results for the TCGA and MRI addition section of my thesis. Namely, a comparison of ROC curves for the model with and without the addition of TCGA and MRI nodes.
- `Basic_Network_changes.ipynb`: This file contains the code I used to generate the results for the basic network changes section of my thesis. These changes were performed before the addition of any extra nodes. It generates a comparison of ROC curves for the original model and the model with the changes.
- `Introduction.ipynb`: This file contains the code I used to generate figures for my introduction, mainly it produces SVG codes for the different networks.
- `MinimalVariables.ipynb`: This file contains the code to generate results for different minimal evidence sets and generate average ROC curves for the different minimal evidence sets.