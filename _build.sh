#!/bin/sh

# Restore Packrat library
Rscript -e "packrat::restore()"

# Render default presentation for book.rplumber.io
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir='_book')"

# Render custom presentation with plumber header for rplumber.io/docs
Rscript -e "devtools::install_github('trestletech/bookdown', ref='plumber')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir='_toolbar_book')"
