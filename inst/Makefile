## directory of ALSPAC data
ALSPACDIR=R:/Data

## number of processors that are available
MCCORES=10 

all: report.html ../data/current.rda

../data/current.rda:
	Rscript create_dictionary_from_stata.R ${ALSPACDIR} ${MCCORES}

report.html: report.rmd ../data/current.rda
	Rscript -e "rmarkdown::render('report.rmd', output_format='all')"

clean:
	rm -f report.html ../data/current.rda ../data/useful.rda
