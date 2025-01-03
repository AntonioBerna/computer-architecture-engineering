COMPILER=lualatex
OUTPUT_PDF=bomb-lab
INPUT_FILE=main.tex

all:
	$(COMPILER) -jobname=$(OUTPUT_PDF) $(INPUT_FILE)
	$(COMPILER) -jobname=$(OUTPUT_PDF) $(INPUT_FILE)

clean:
	$(RM) *.aux *.log *.out *.fls *.fdb_latexmk *.toc

.PHONY: all clean