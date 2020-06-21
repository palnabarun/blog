.PHONY: serve build clean

DESTINATION?=site
BASE_URL?=https://blog.naba.run

serve:
	hugo server

build:
	hugo --baseURL $(BASE_URL) --destination $(DESTINATION) --cleanDestinationDir --minify

clean:
	rm -rf $(DESTINATION)
