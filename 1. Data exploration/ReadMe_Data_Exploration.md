# Data exploration readme file
## Description
This  folder contains the notebooks I used to explore the datasets, cleaning them for use in the models. Additionally, they contain some rudimentary analysis of the data to understand the data better. The cross-tables folder contains notebooks to make cross-table heatmaps to analyse and present a visual representation of the correlations in the data.

## Files
- Crosstable generation
  - `Brno_crosstables.ipynb`: Notebook to generate cross-tables for the Brno dataset, specifically imaging MI vs MI and TCGA molecular subtypes against LNM
  - `Crosstables_MAYO.ipynb`: Notebook to generate cross-tables for the Mayo dataset, exploring IHC markers, CA125, imaging MI and TCGA molecular subtypes
  - `Crosstables_PIPENDO.ipynb`: Notebook to generate cross-tables for the PIPENDO dataset, exploring IHC markers and CA125
  - `Crosstables_Training++.ipynb`: Notebook to generate cross-tables for the extended training dataset, exploring IHC markers, CA125, imaging MI and TCGA molecular subtypes
  - `Crosstables_Tubingen.ipynb`: Notebook to generate cross-tables for the Tübingen dataset, exploring IHC markers, CA125, and TCGA molecular subtypes


- `BMI influences across datasets.ipynb`: Notebook to analyse the BMI across the datasets, creating BMI groups and comparing the distribution of markers over the groups
- `Combination_Brno_training.ipynb`: Notebook to combine the Brno and extended training datasets into a single dataset
- `Compare_low_risk_high_risk.ipynb`: Notebook to compare the low and high-risk groups generated in the Data exploration notebooks, over all datasets
- `Data_exploration_Brno.ipynb`: Notebook to explore, clean and superficially analyse the Brno dataset
- `Data_exploration_MAYO.ipynb`: Notebook to explore, clean and superficially analyse the Mayo dataset
- `Data_exploration_PIPENDO.ipynb`: Notebook to explore, clean and superficially analyse the PIPENDO dataset
- `Data_exploration_Tubingen.ipynb`: Notebook to explore, clean and superficially analyse the Tübingen dataset
- `Original_dataset.ipynb`: Notebook to explore, clean and superficially analyse the original dataset
- `Original_PIPENDO.ipynb`: Notebook to explore, clean and superficially analyse the original PIPENDO dataset. This was because the new PIPENDO dataset had inconsistencies with the dataset described in Reijnen et al. 2020
- `Training_data_exploration_and_fixing.ipynb`: Notebook to explore, clean and superficially analyse the extended training dataset