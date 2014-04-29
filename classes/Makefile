PDFS=classes.pdf

all: $(PDFS)

classes.pdf: classes.tikz

%.pdf: %.md ../article.template
	pandoc $< -o $@ \
	--template=../article.template \
	--chapters \
	--latex-engine=lualatex
