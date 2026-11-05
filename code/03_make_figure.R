# REQUIRED FIGURE: Figure 1, boxplot of age by heart disease status.
# Saves to output/figure1_age_boxplot.png
here::i_am("code/03_make_figure.R")

library(ggplot2)

heart <- readRDS("output/heart_clean.rds")

fig1 <- ggplot(heart, aes(x = heart_disease, y = age, fill = heart_disease)) +
  geom_boxplot() +
  labs(title = "Age by Heart Disease Status",
       x = "Heart Disease Status",
       y = "Age (years)")

ggsave("output/figure1_age_boxplot.png", fig1, width = 6, height = 4, dpi = 150)
