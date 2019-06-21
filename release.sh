set -ex

# automatically export all variables
set -a
source .env
set +a

# bump version
version=`cat VERSION`
echo "version: $version"

# docker build
./build.sh

docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
