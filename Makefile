
envfile ?= .env.example

TERRAFORM_RUN = docker-compose run --rm terraform

.env:
	cp -f $(envfile) .env

init:
	$(TERRAFORM_RUN) init

validate:
	$(TERRAFORM_RUN) validate

deploy:
	$(TERRAFORM_RUN) plan
	$(TERRAFORM_RUN) apply output.tfplan

format:
	$(TERRAFORM_RUN) fmt -recursive
fmt: format

destroy:
	$(TERRAFORM_RUN) destroy