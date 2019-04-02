build:
	pip install -r requirements.txt -t "extractor"
	python -m zipapp extractor --compress -p "/usr/bin/env python"