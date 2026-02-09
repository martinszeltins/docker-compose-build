# Docker Compose - build, push, pull images

1. Running docker compose up will pull or build all missing images automatically.
2. If image exists in registry, it will be pulled. If not, it will be built locally.
3. `$ docker compose push` will push all images to registry (only tags specified in the compose file).
