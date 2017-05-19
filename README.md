# Distraction

This repository contains the models from the article "The resource-availability theory of distraction" 
by Taatgen, van Vugt, Daamen, Katidioti, Huijser & Borst.

It also has the PRIMs application needed to run the models (currently only under MacOs X). Furthermore, R-files are supplied that aggregate
and plot the output files of the model.

To obtain the model output as they are in the paper, start the PRIMs application, and pick "Run batch..." under the Run menu. Then
select a file with the .bprims extension for the particular model you want to run. This will run the model a large number of 
times and produce an output file that can then be analyzed with the R script.

However, it can be more interesting to load in individual models, and use the interface to observe the model's behavior. A full
explanation of how the interface works can be found in the PRIMs tutorial, which is also here on Github (ntaatgen/PRIMs-Tutorial)
