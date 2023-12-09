DOCKER_REPOSITORY ?= sotirismorf/aperta
DOCKER_TAG ?= $(shell jq -r '.version' package.json)

.PHONY: db
db:
	@docker compose up db

.PHONY: prod
prod:
	@docker compose up

.PHONY: build
build:
	docker build --no-cache -t ${DOCKER_REPOSITORY}:${DOCKER_TAG} .

push:
	docker push ${DOCKER_REPOSITORY}:${DOCKER_TAG}
