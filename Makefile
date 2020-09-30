.ONESHELL:
.DEFAULT_GOAL := help
.PHONY: help dev

GIO_AM_VERSION=2
NGINX_PORT=18000

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## set up the docker stack
	 docker-compose up

stop: ## stop the docker stack
	 docker-compose stop


