DOCKER_IMG_NAME=zephyr-project
APP_PATH=/workdir

docker-dev-cli:
	docker container run -p 5900:5900 \
		--rm -it --privileged \
		--group-add dialout \
		-v ${PWD}:${APP_PATH} \
		-w ${APP_PATH} ${DOCKER_IMG_NAME} \
		bash

docker-install-env:
	docker build -t ${DOCKER_IMG_NAME} --progress tty .
