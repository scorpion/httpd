<p align="center"><img src="https://raw.githubusercontent.com/scorpion/httpd/main/.github/images/scorpion.svg" alt="Scorpion Logo" height="55px"/></p>

[![Docker Compose](https://github.com/scorpion/httpd/actions/workflows/compose-test.yaml/badge.svg)](https://github.com/scorpion/httpd/actions/workflows/compose-test.yaml)
[![HTTPD Image](https://github.com/scorpion/httpd/actions/workflows/httpd.yaml/badge.svg)](https://github.com/scorpion/httpd/actions/workflows/httpd.yaml)
![GitHub](https://img.shields.io/github/license/scorpion/httpd?logo=apache&color=blue)

Apache (httpd) web service.

## Update

To update the httpd service, you will need to follow

1. Update `
2. Update `httpd.conf` file with any upstream defaults. Running the below command will pull the httpd config from a temporary upstream image and delete after extraction.

    ```bash
    sh build.sh
    ```

3. Check https://github.com/scorpion/httpd/actions to make sure build was successful.
4. Tag release with name of upstream apache httpd service.

## 🐳 Docker Compose

Bring up the httpd service as a docker compose service.

```bash
docker compose up -d --build
```
