# Makefile

PROJECT_NAME=donezo
ENV ?= local
COMPOSE_FILE=docker-compose.$(ENV).yml
COMPOSE=docker compose -f $(COMPOSE_FILE)
COMPOSE_BAKE=COMPOSE_BAKE=true

.PHONY: check-uv build up down restart lint logs clean-all types

check-uv:
	sh scripts/check_uv.sh

build: check-uv
	$(COMPOSE_BAKE) $(COMPOSE) build

up: check-uv
	$(COMPOSE_BAKE) $(COMPOSE) up --build -d

down:
	$(COMPOSE) down

restart: down up

lint:
	$(COMPOSE) run --rm web ruff check . --no-cache

fresh-up: check-uv
	$(COMPOSE_BAKE) $(COMPOSE) build --no-cache
	$(COMPOSE_BAKE) $(COMPOSE) up -d
logs:
	$(COMPOSE) logs -f

clean-all:
	$(COMPOSE) down -v

types:
	$(COMPOSE) run --rm web mypy .