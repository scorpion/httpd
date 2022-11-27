# Get environment variables
set -o allexport
source .env
set +o allexport

# Change directory to Docker
cd ./docker/httpd

# Push docker image
docker push scorpion/httpd:$SCORPION_HTTPD_VERSION
