
#H-----------------------------------
## > 2. Learning outcomes: ----
#H-----------------------------------

    # By the end of the practical, students can:
    #   - export R tables to Word

#H-----------------------------------
## > Prep: ----
#H-----------------------------------
# setwd(" ")
getwd()            # Check your current path
rm(list = ls())    # Remove objects

install.packages("modelsummary") # Regression tables
install.packages("eoffice")      # Export to Word
install.packages("tableone")  

#H-----------------------------------
## > 1. Descriptive statistics ----
#H-----------------------------------
# setwd("")      # Set the current folder
library("tidyverse")
health <- read_rds("R-ExportingTables_to_Word/health_cleaned.rds")

# both removed variable names!

desc_var <- health %>%
  select(-hserial, -pserial, -gender, -employed)

####### EXPORT TO DOCX #######
library(tableone)

# declare vars to summarise
vars <-  c("bmival", "socialclass", "age",
           "fruitveg",
         "alcohol", "gender", "employed")

# showAllLevels includes all categories of variables
a <- print(CreateTableOne(data = health[, vars]), 
      showAllLevels = TRUE ) 

# explicitly add variable names to export to docx
Variable <- as.character(row.names(a))
Variable

# merge variable names
desc <- data.frame(Variable, a)
desc  

# EXPORT TO DOCX
# install.packages("eoffice")
library("eoffice")
totable(desc, "R-ExportingTables_to_Word/R_Tables/Desc.docx") 

# https://cran.r-project.org/web/packages/tableone/vignettes/introduction.html

#H-----------------------------------
## > 2. Regression analysis ----
#H-----------------------------------

model1 <- lm(bmival ~ socialclass, data = health)
summary (model1)

model2 <- lm(bmival ~ socialclass + age + gender +
               employed + fruitveg + alcohol, data = health)
summary (model2) 

anova(model1, model2)

library(modelsummary)
models <- list(model1, model2)

# gof means goodness of fit. Declare what to print.
fit <- c("nobs", "r.squared", "adj.r.squared" )

modelsummary(models, stars = TRUE, gof_map = fit) 

####### EXPORT TO DOCX: #######
# library("eoffice")
modelsummary(models, stars = TRUE, gof_map = fit, 
        output = "R-ExportingTables_to_Word/R_Tables/Regression.docx")


### End ###