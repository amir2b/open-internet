#!make

init:
	@cp -n .env.example .env
	@nano .env

up: .env
	@docker-compose up

down: .env
	@docker-compose down --remove-orphans

start: .env
	@docker-compose up -d

stop: .env
	@docker-compose stop

restart: .env
	@make down
	@make start

remove: stop
	@docker-compose rm -f

logs: .env
	@docker-compose logs -f

stats:
	@docker stats

ps:
	@docker-compose ps

update:
	@git pull
