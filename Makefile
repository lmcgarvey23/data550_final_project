# Build the final report with:  make report
# (run from the project root)

.PHONY: all report clean 

all: report

report: report/final_report.html

report/final_report.html: report/final_report.Rmd output/table1.rds output/class_counts.rds output/figure1_age_boxplot.png
	Rscript -e "rmarkdown::render('report/final_report.Rmd')"

output/heart_clean.rds: code/01_clean_data.R 
	Rscript code/01_clean_data.R

output/table1.rds output/class_counts.rds: code/02_make_table.R output/heart_clean.rds
	Rscript code/02_make_table.R

output/figure1_age_boxplot.png: code/03_make_figure.R output/heart_clean.rds
	Rscript code/03_make_figure.R

clean:
	rm -f output/*.rds output/*.png report/final_report.html