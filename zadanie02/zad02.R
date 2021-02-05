#install.packages('devtools')

#devtools::install_github("gluc/ahp", build_vignettes = TRUE)
library(ahp)
library(here)

ahp_file_data <- system.file("extdata", here("lab2.ahp"), package = "ahp")
lab2Ahp <- Load(ahp_file_data)
Calculate(lab2Ahp)
Visualize(lab2Ahp)
Analyze(lab2Ahp)
AnalyzeTable(lab2Ahp)
