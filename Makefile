clean:
	rm -rf ip-to-country

ip-to-country:
	dolt clone dolthub/ip-to-country

build_site: ip-to-country
	(cd ip-to-country; dolt sql-server &)
	Rscript -e "renv::activate(); rmarkdown::render_site()"
	
all: build_site