export VERSION ?= dev
.DEFAULT_GOAL := help

help: ## Prints this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: ## Builds browserstack-local
	docker build -t quay.io/typeform/browserstack-local:${VERSION} .

push:  ## Pushes browserstack-local
	docker push quay.io/typeform/browserstack-local:${VERSION}