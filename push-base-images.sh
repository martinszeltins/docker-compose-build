#!/usr/bin/env bash
set -euo pipefail

source .env

# Base images to build and push
images=(
    "ghcr.io/martinszeltins/dcbuild-client-base:${DCBUILD_CLIENT_BASE_TAG} docker/images/client-base"
    "ghcr.io/martinszeltins/dcbuild-server-base:${DCBUILD_SERVER_BASE_TAG} docker/images/server-base"
)

for entry in "${images[@]}"; do
    read -r image context <<< "$entry"
    echo "Building $image..."
    docker build -t "$image" "$context"
    echo "Pushing $image..."
    docker push "$image"
done

echo "All base images pushed."
