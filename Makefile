MKD=python3 -m mkdocs
install:
	pip3 install -r requirements.txt

build:
	$(MKD) build --clean

serve:
	$(MKD) serve

publish:
	cd institute-of-coding.github.io && $(MKD) gh-deploy --config-file ../mkdocs.yml --remote-branch gh-pages

clean:
	rm -rf ./site
