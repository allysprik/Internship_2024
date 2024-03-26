## ### Author: Ally Sprik
### Last-updated: 25-02-2024

# Goal of this notebook is to impute MAYO through the bnlearn package and defined network, generating a number of imputed datasets.



library(bnlearn)
library(Rgraphviz)

# The necessary subsets are created in the data-cleaning.R 
# Transform the modelstring (bayesian network) to Directed Acyclic Graph
# Define Directed Acyclic Graph (DAG) structure
# It is a string that defines the structure of the Bayesian network according to the following rules:
# [node1|node2:node3] means that node1 is dependent on node2 and node3
# A node must be defined before it can be used as a parent node
# each bracket pair defines a node and its parents

dag = paste("[MyometrialInvasion|PostoperativeGrade][MRI_MI|MyometrialInvasion]",
            "[Cytology|PostoperativeGrade]",
            "[PreoperativeGrade]",
            "[PostoperativeGrade|PreoperativeGrade]",
            "[FIGO|PostoperativeGrade]",
            "[LNM|LVSI:MyometrialInvasion:PostoperativeGrade:Chemotherapy]",
            "[CA125|LNM][CTMRI|LNM:CA125]", 
            "[LVSI|PostoperativeGrade:Cytology:Chemotherapy]",
            "[p53|LNM:PostoperativeGrade:L1CAM]",
            "[ER|LNM:PostoperativeGrade][PR|LNM:PostoperativeGrade:ER]",
            "[L1CAM|LNM:PostoperativeGrade:PR]",
            "[Platelets|LNM]",
            "[MSI|LNM:PostoperativeGrade]",
            "[POLE|LNM:PostoperativeGrade]",
            "[Recurrence|CA125:LNM:LVSI:PostoperativeGrade]",
            "[Chemotherapy|PostoperativeGrade]",
            "[Radiotherapy|MyometrialInvasion]",
            "[Survival1yr|Recurrence:Chemotherapy:Radiotherapy:Survival3yr:Survival5yr]",
            "[Survival3yr|Recurrence:Chemotherapy:Radiotherapy:Survival5yr]",
            "[Survival5yr|Recurrence:Chemotherapy:Radiotherapy]", sep="")

# dagmodel: pre-defined directed acyclic graph (DAG) structure
dagmodel = model2network(dag)

# Plot the Graphs
graphviz.plot(dagmodel, shape = "rectangle", highlight = list("nodes"))



# Load the data for imputation
subsetDAG = read.csv(file = "0. Source_files/0.2. Cleaned_data/MAYO_cleaned_model.csv", header=TRUE, colClasses = c(rep("factor")), sep = ",", na.strings=c(""," ","99","NA"))
attach(subsetDAG)

# Select the network nodes as columns from the dataset
subsetDAG = subsetDAG[, names(dagmodel$nodes)]

# fittedDAG: the fitted Bayesian network model resulting from bn.fit()
# bn.fit(): parameter learning to estimate conditional probabilities
#         : method - Bayesian estimation; structure - dagmodel; data - subsetDAG

fittedDAG = bn.fit(dagmodel, data = subsetDAG, method = "bayes")

# 1.2. Imputation
imputeddata = impute(fittedDAG, subsetDAG, method = "bayes-lw", n = 5000) 
class(imputeddata)

# Double-Check whether any NA present
sapply(imputeddata, function(x) sum(is.na(x)))

summary(imputeddata)


# Insert only CA125 column from imputeddata to subsetDAG
# ------------------------------------------------------
subsetDAG$CA125 <- imputeddata$CA125

write.table(subsetDAG, file = "0. Source_files/0.3. Imputed_data/MAYO-CA125-Imputed.csv", append = FALSE, quote = TRUE, sep = ";",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE)

# Save the completely imputed data
write.table(imputeddata, file = "0. Source_files/0.3. Imputed_data/MAYO-imputed-complete.csv", append = FALSE,
            quote = TRUE, sep = ";", col.names = TRUE, row.names = FALSE)

