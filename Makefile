PROJECT_NAME=donezo
COMPOSE_BAKE=COMPOSE_BAKE=true
COMPOSE=docker compose -f docker-compose.local.yml

.PHONY: build up down restart

check-uv:
	sh scripts/check_uv.sh

build: check-uv
	$(COMPOSE_BAKE) $(COMPOSE) build -d

up: check-uv
	$(COMPOSE_BAKE) $(COMPOSE) up --build -d

down:
	$(COMPOSE) down

restart: down up

lint:
	$(COMPOSE) run --rm web ruff src

logs:
	$(COMPOSE) logs -f

clean-all:
	$(COMPOSE) down -v

types:
	$(COMPOSE) run --rm web mypy src