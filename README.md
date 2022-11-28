<p align="center"><img src="https://raw.githubusercontent.com/scorpion/httpd/main/.github/images/scorpion.svg" alt="Scorpion Logo" height="55px"/></p>

[![Docker Compose](https://github.com/scorpion/httpd/actions/workflows/compose-test.yaml/badge.svg)](https://github.com/scorpion/httpd/actions/workflows/compose-test.yaml)
[![HTTPD Image](https://github.com/scorpion/httpd/actions/workflows/httpd.yaml/badge.svg)](https://github.com/scorpion/httpd/actions/workflows/httpd.yaml)
![GitHub](https://img.shields.io/github/license/scorpion/httpd?logo=apache&color=blue)

# Apache (httpd) web service.

The scorpion httpd web server project aims to provide an image aligned with the upstream Apache HTTPD software. We customize the container for our needs and provide the docker images for public use.

## 🎒 Setup

To setup the image, copy `.env.example` to `.env` in the root directory.

```bash
cp .env.example .env
```

## 🚀 Quick Build and Run

If you want to avoid tagging, docker build -q outputs nothing but the final image hash, which you can use as the argument to docker run:

```bash
docker run -it -p 8080:80 -v "$PWD"/docker/httpd/html:/usr/local/apache2/htdocs/ $(docker build -q ./docker/httpd --build-arg SCORPION_HTTPD_VERSION=2.4-alpine)
```

And add --rm to docker run if you want the container removed automatically when it exits.

docker run --rm -it -p 8080:80 -v "$PWD"/docker/httpd/html:/usr/local/apache2/htdocs/ $(docker build -q ./docker/httpd --build-arg SCORPION_HTTPD_VERSION=2.4-alpine)

## 🗺️ Guide and Usage

HTTPD Guide - https://hub.docker.com/_/httpd

All files are served from the location below. Overwrite with your own files when building the image or create a new apache conf file to serve from an alternate location. An example site is copied/served from the `./docker/httpd/html` in this repo.

```bash
/usr/local/apache2/htdocs/
```

A default apache config is generated and stored in the following location. Overwrite with any custom changes.

```bash
/usr/local/apache2/conf/httpd.conf
```

## 🐳 Docker Compose

Bring up the httpd service as a docker compose service.

```bash
docker compose up
```

Build image and bring up httpd as a docker compose service.

```bash
docker compose up -d --build
```

## 🏗️ Update Image

To update the httpd service, you will need to update the `.env.example` as this is the core value the final image builds from.

1. Modify `.env.example` with targeted upstream version.
2. Merge SCORPION's custom `httpd.conf` file with any upstream default changes if needed. Running the command below will pull and extract the httpd config from a temporarily downloaded upstream docker image.

    ```bash
    sh build.sh
    ```

3. Check https://github.com/scorpion/httpd/actions to make sure build was successful.
4. Tag release with name of upstream apache httpd service.
