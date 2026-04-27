DOCKER_USERNAME ?= qmacro
PACKAGENAME ?= odd

build:
	docker build --file ./.devcontainer/Dockerfile --platform linux/amd64 --tag ${DOCKER_USERNAME}/${PACKAGENAME} .

tag:
	docker tag ${DOCKER_USERNAME}/${PACKAGENAME} ghcr.io/${DOCKER_USERNAME}/${PACKAGENAME}

push:
	docker push ghcr.io/${DOCKER_USERNAME}/${PACKAGENAME}

deploy:
	cf push ${PACKAGENAME} --docker-image ghcr.io/${DOCKER_USERNAME}/${PACKAGENAME}
