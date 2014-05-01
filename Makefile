ORDERS=prelims/order.txt chapters/order.txt
MAINCHAPTERS=$(shell cat chapters/order.txt)
CHAPTERS:=$(shell cat $(ORDERS))
TEMPLATE=templates/book.template

.PHONY: chapters

all: book.html book.pdf

chapters: chapters/order.txt
	for d in $(dir $(MAINCHAPTERS)); do make -C $$d; done

book.pdf book.html: */*/*.tikz $(CHAPTERS) $(ORDERS)

%.pdf: $(TEMPLATE)
	pandoc $(CHAPTERS) -o $@ \
	--template=$(TEMPLATE) \
	--chapters \
	--variable book \
	--latex-engine=lualatex

book.html: templates/book.html
	pandoc $(CHAPTERS) -o $@ \
	--template=templates/book.html \
	--chapters \
	--toc --toc-depth=1 \
	-sSN
