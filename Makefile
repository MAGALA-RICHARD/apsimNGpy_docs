SPHINXBUILD   = sphinx-build
SPHINXAPIDOC  = sphinx-apidoc
SOURCEDIR     = source
BUILDDIR      = build
MODULEDIR     = ../apsimNGpy

.PHONY: help clean html api

help:
	@echo "Makefile for Sphinx documentation"
	@echo "Usage:"
	@echo "  make html     - Build HTML documentation"
	@echo "  make clean    - Remove generated documentation"
	@echo "  make api      - Generate API documentation"

clean:
	rm -rf $(BUILDDIR)/*

api:
	$(SPHINXAPIDOC) -f -o $(SOURCEDIR) $(MODULEDIR)

html: api
	$(SPHINXBUILD) -b html $(SOURCEDIR) $(BUILDDIR)/html
