configure:
	rm -rf venv
	python3 -m venv venv
	. venv/bin/activate; \
	pip install pysmt; \
	pip install python-sat; \
	pip install pytest

test:
	. venv/bin/activate; \
	python3 -m pytest -s test.py

benchmark:
	@. venv/bin/activate; \
	python3 measure.py