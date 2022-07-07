# Créer une Makefile pour l'installation du projet de test JWT
.PHONY: install up migrations fixtures stop build npm

export ROOT_DIR=${PWD}

server: up ## lance le docker
	docker-compose up -d --build

stop: stop ## stop les docker
	docker-compose stop

## build
build: build
	cd ${ROOT_DIR}/symfony && npm run build

npm: npm
	cd ${ROOT_DIR}/symfony && npm install

## Install application
vendor: install
	cd ${ROOT_DIR}/symfony/ && composer install

env: install
	cp ${ROOT_DIR}/symfony/.env ${ROOT_DIR}/symfony/.env.local

fixtures: fixtures
	cd ${ROOT_DIR}/symfony/ && symfony console d:f:l
	
log: log ##affiche les log
	tail -f symfony/var/log/dev.log
