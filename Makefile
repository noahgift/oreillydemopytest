install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=lib --cov=cli tests/*.py
	python -m pytest --nbval-lax notebook.ipynb


lint:
	pylint --disable=R,C hello cli

format:
	black *.py

all: install lint test