#rule for making report
report: Rmd/report.Rmd figs/KM_figure.png 
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"

#rule for read in the dataset and making a summary table
Table_Redo: R/Table_Redo.R Num_of_Redo.csv
	Rscript R/Table_Redo.R

#rule for making KM curve
figs/KM_figure.png: R/KM_figure.R 
	Rscript R/KM_figure.R

.PHONY: report