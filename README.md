# Docker Compose - build, push, pull images

1. Running `docker compose up` will pull or build all missing images automatically.
2. If image exists in registry, it will be pulled. If not, it will be built locally.
3. `$ docker compose push` will push all images to registry (only tags specified in the compose file).

# You need only 2 commands

1. **Pull/build images**: `docker compose up`
2. **Push images**: `docker compose push`

_If you change Dockerfile and want to rebuild existing image, you can run `docker compose up -d --build` and `docker compose push` to push the updated image to registry._
