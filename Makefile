VENV := .venv
PYTHON := $(VENV)/bin/python3
STATICJINJA := $(VENV)/bin/staticjinja
LIVERELOAD := $(VENV)/bin/livereload

DIST := ./dist
STATIC := ./static  # Inside the ./templates context, so it is ./templates/static
OPTS := --outpath=$(DIST) --static=$(STATIC)
PORT := 3000

build:
	[ -d $(VENV) ] || make venv
	$(STATICJINJA) build $(OPTS)

dev:
	[ -d $(VENV) ] || make venv
	$(STATICJINJA) watch $(OPTS) & $(LIVERELOAD) $(DIST) -p $(PORT)

venv:
	python3 -m venv $(VENV)
	$(PYTHON) -m pip install -r requirements.txt

freeze:
	$(PYTHON) -m pip freeze > requirements.txt
