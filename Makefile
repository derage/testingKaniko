build:
	docker run  -v `pwd`:/workspace \
	            -v ~/.docker/config.json:/kaniko/config.json \
	            --env DOCKER_CONFIG=/kaniko \
	            gcr.io/kaniko-project/executor:latest \
	            -d index.docker.io/jcafarelli31/testingkaniko
