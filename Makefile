################################################################################
# Default target                                                               #
################################################################################

help: ## Display this help screen (default)
	@echo 'Usage:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help

build: ## Compile and Generate PDF
	xelatex -output-directory=archive -jobname=Udit\ Desai\ -\ Resume\ -\ $$(date +"%Y-%m-%d") Udit\ Desai\ -\ Resume\ -\ AwesomeCV.tex
.PHONY: build

watch: ## Compile and Generate PDF on Watch Mode
	latexmk -pvc -xelatex -outdir=archive -jobname=Udit\ Desai\ -\ Resume\ -\ $$(date +"%Y-%m-%d") Udit\ Desai\ -\ Resume\ -\ AwesomeCV.tex
.PHONY: watch
