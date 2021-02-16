all:
	Rscript -e "renv::activate(); rmarkdown::render_site()"

clean:
	rm -rf ip-to-country _site
