DOCKER_REPOSITORY ?= g1zmolab/gizmolib-strapi
DOCKER_TAG ?= $(shell jq -r '.version' package.json)

.PHONY: dev
dev:
	@docker compose up

.PHONY: build
build:
	docker build --no-cache -t ${DOCKER_REPOSITORY}:${DOCKER_TAG} .

.PHONY: push
push:
	docker push ${DOCKER_REPOSITORY}:${DOCKER_TAG}
