ORDERS=prelims/order.txt chapters/order.txt
MAINCHAPTERS=$(shell cat chapters/order.txt)
CHAPTERS:=$(shell cat $(ORDERS))
TEMPLATE=templates/book.template

.PHONY: chapters

all: book.pdf

chapters: chapters/order.txt
	for d in $(dir $(MAINCHAPTERS)); do make -C $$d; done

book.pdf: */*/*.tikz $(ORDERS)

%.pdf: $(CHAPTERS) $(TEMPLATE)
	pandoc $(CHAPTERS) -o $@ \
	--template=$(TEMPLATE) \
	--chapters \
	--variable book \
	--latex-engine=lualatex
