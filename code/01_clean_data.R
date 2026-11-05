# Reads the raw data, adds variable names, creates the heart_disease indicator,
# and saves the cleaned data to output/heart_clean.rds
here::i_am("code/01_clean_data.R")

library(dplyr)

#load the data
heart <- read.csv(
  "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data",
  header = FALSE
)

#add variable names
names(heart) <- c(
  "age",
  "sex",
  "cp",
  "trestbps",
  "chol",
  "fbs",
  "restecg",
  "thalach",
  "exang",
  "oldpeak",
  "slope",
  "ca",
  "thal",
  "num"
)

heart <- heart %>%
  mutate(
    heart_disease = ifelse(
      num == 0,
      "No heart disease",
      "Heart disease"
    )
  )

saveRDS(heart, "output/heart_clean.rds")

