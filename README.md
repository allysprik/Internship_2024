# Internship 2024 readme file
## Description
This project contains code from my internship at the RadboudUMC, where I worked on extension, analysis, and validation of the ENDORISK network. Due to the sensitive nature of the data used, it is not included in this repository. Additionally, the code has been sanitised to removed any sensitive information.

This document is the readme file for an overview of the project. Each folder has its own readme to define the different files contained. Additionally, most files are notebooks which detail their function more specifically.

## Packages used
The project uses both R and Python files. Generally used conda to manage the python packages, but some packages are not available through conda and are installed through pip. R packages were managed through pycharm built-in package manager.

The R files use the following packages:
- `dplyr`: Data manipulation toolset
- `ggplot2`: Data visualization
- `caret`: Tool package for data manipulation
- `bnlearn`: Bayesian network learning
- `Rgraphviz`: Graph visualization
- `gRain`: Graphical Independence Networks, used for Bayesian network learning
- `tidyverse`: general data science toolset

The Python files use the following packages:
- `numpy`: Numerical Python interface
- `pandas`: Data manipulation and analysis
- `matplotlib`: Plotting library
- `seaborn`: Data visualization library, enhances matplotlib
- `pyAgrum`: Probabilistic graphical models implemented in python, used for bayesian network result generation
- `sklearn`: Machine learning library, used for imputation trials
- `MiceForest`: Imputation library combining Random Forests with MICE algorithm, used for imputation trials
- `MIDASpy`: Imputation library using a deep learning approach, used for imputation trials
- `TensorFlow`: Deep learning library, used by MIDASpy
- `Keras`: Deep learning library, used by MIDASpy
- `Glasbey`: Color generation library, used for color generation in the network visualizations
- `dcurves`: Visualization library for decision curves, used for model analysis
- `jupyter`: Used for running the and enabling the notebooks

## Folder Structure
The folder is structured by steps taken, as such:

The folder structure follows the logical progression of steps through the project.
-  "1. Data exploration" contains all files used to explore the data and clean it.
-  "2. Imputation" contains all files used to impute the data through methods other than network generation.
-  "3. Model" contains all files used to generate the  different networks.
-  "4. Model_analysis" contains all files used to analyze the networks generated.

Ally_Paper_Generation is straightforward, it contains the files used to generate figures etc for my internship thesis.