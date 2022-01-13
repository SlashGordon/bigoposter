DOCKER_IMAGE = "slashgordon/latex"
builddocker: builddocker.step

builddocker.step:
	docker build -t $(DOCKER_IMAGE) .
	touch builddocker.step
delete:
	rm -rf main.aux
	rm -rf main.fdb_latexmk
	rm -rf main.fls
	rm -rf main.log
	rm -rf main.pdf
	rm -rf main.pgf-plot.gnuplot
	rm -rf main.pgf-plot.table
	rm -rf main.pgf-plot.vrs
	rm -rf main.synctex.gz