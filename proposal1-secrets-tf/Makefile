SHELL := /bin/bash

all: deploy

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

deploy:  ## Deploy Terraform
	@echo "Running Terraform Apply"
	terraform apply --auto-approve -var-file env/terraform.tfvars


destroy:  ## Destroy Terraform
	@echo "Running Terraform Destroy"
	terraform destroy --auto-approve -var-file env/terraform.tfvars
