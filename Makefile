.PHONY: all

all:
	for html in $$(git ls-files | grep "html$$"); do tidy -config tidy.config $$html | sponge $$html ; done
