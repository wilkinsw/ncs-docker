TOOLCHAIN_ID=cfa6b06338

# create and bootstrap builder (if you haven't already)
docker buildx create --name ncs-builder --driver docker-container --use
docker buildx inspect ncs-builder --bootstrap

# build and load into local docker (replace tag as you want)
docker buildx build --build-arg VERSION=$TOOLCHAIN_ID --platform linux/amd64 -t ncs . --load
