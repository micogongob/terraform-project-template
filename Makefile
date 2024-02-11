
envfile ?= .env.example

TERRAFORM_RUN = docker-compose run --rm terraform

.env:
	cp -f $(envfile) .env

init:
	$(TERRAFORM_RUN) init

validate:
	$(TERRAFORM_RUN) validate

plan:
	$(TERRAFORM_RUN) plan

apply:
	$(TERRAFORM_RUN) apply output.tfplan

deploy: plan apply

format:
	$(TERRAFORM_RUN) fmt -recursive
fmt: format

destroy:
	$(TERRAFORM_RUN) destroy
