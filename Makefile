CHAPTERS:=$(shell cat order.txt)

all: book.pdf

book.pdf: */*.tikz order.txt

%.pdf: $(CHAPTERS) article.template
	pandoc $(CHAPTERS) -o $@ \
	--template=article.template \
	--chapters \
	--latex-engine=lualatex
