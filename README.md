# httpd

Apache (httpd) web service.

## Update

To update the httpd service, you will need to follow

    1. Update httpd.conf file with any changes. Running the below command will make the httpd service available.

```bash
sh build.sh
```

## Docker Compose

Bring up the httpd service as a docker compose service.

```bash
docker compose up -d --build
```
