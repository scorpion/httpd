# Get environment variables
set -o allexport
source .env
set +o allexport

# TODO: Copy .env.example to .env if one does not exist.
# cp .env.example .env

## Overwrite the default httpd service with the version we are targeting.
docker run --rm httpd:${SCORPION_HTTPD_VERSION} cat /usr/local/apache2/conf/httpd.conf > ./docker/httpd/config/httpd.conf

# Build and tag docker image
docker build ./docker/httpd -t scorpion/httpd:${SCORPION_HTTPD_VERSION} --build-arg SCORPION_HTTPD_VERSION
