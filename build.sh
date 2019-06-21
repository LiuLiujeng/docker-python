set -ex

# automatically export all variables
set -a
source .env
set +a

docker-compose build
