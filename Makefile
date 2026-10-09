all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex

clean:
	latexmk -c

.PHONY: all clean
