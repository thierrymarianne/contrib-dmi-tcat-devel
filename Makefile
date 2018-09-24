SHELL:=/bin/bash

## See also https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build-image: ## Build docker image
	@/bin/bash -c 'source ./provisioning/build.sh'

get-interactive-shell: ## Get an interactive shell
	@/bin/bash -c 'source ./provisioning/exec.sh'

run-container: ## Run container
	@/bin/bash -c 'source ./provisioning/run.sh'
