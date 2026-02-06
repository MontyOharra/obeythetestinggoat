VENV := .venv
PYTHON := $(VENV)/Scripts/python

.PHONY: venv install run clean

venv:
	python -m venv $(VENV)

install: venv
	$(VENV)/Scripts/pip install -r requirements.txt

run:
	$(PYTHON) main.py

clean:
	rm -rf $(VENV)
