# testingKaniko
This repo is to test out Kaniko. 

### What is Kaniko?
Its a docker image that allows you to build containers inside of a container without exposing the docker daemon inside the container. It works by running the commands locally, then snapshotting it, creating a sha, and pushing it up to dockerhub.

### How to use:
1. Change the make file command to your docker hub account
2. If on mac, go into docker -> preferences and uncheck `macOS keychain`
3. run `docker login` so ~/.docker/config.json is updated
4. run `make`
5. Check your repo and see that the image was pushed up to dockerhub

This was all done using a container. This can be easily replicated in jenkins server
