build:
	pip install -r requirements.txt -t "extractor"
	rm -rf extractor/bin extractor/etc extractor/share extractor/*.dist-info
	python -m zipapp extractor --compress -p "/usr/bin/env python"