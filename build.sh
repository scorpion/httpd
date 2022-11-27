# Get environment variables
set -o allexport
source .env
set +o allexport

## Overwrite the default httpd service with the version we are targeting.
docker run --rm httpd:${SCORPION_HTTPD_VERSION} cat /usr/local/apache2/conf/httpd.conf > ./docker/httpd/config/httpd.conf

# Change directory to Docker
cd ./docker/httpd

# Build docker image
docker build . -t scorpion/httpd:${SCORPION_HTTPD_VERSION} --build-arg SCORPION_HTTPD_VERSION
