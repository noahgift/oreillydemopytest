install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=lib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C hello

format:
	black *.py

all: install lint test