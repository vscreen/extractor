build:
	pip install -r requirements.txt -t "extractor"
	python -m zipapp extractor -p "/usr/bin/env python"