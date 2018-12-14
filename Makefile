DOCKER_REGISTY=kiab.local:5000

IMAGE_NAME=test-flask-kube
CONTAINER_NAME=test-flask-kube
CONTAINER_VERSION=test-1

DOCKER_IMAGE=$(DOCKER_REGISTY)/$(IMAGE_NAME):$(CONTAINER_VERSION)

.PHONY: build build-local build-arm push push-arm shell shell-arm run run-arm start start-arm stop stop-arm rm rm-arm release release-arm deploy-local

build-local:
	@docker build -t $(DOCKER_IMAGE) .
	docker push $(DOCKER_IMAGE)

deploy-local:
	@ansible-playbook _kubernetes/kube.deployment.playbook.yml 

default: build-local 
