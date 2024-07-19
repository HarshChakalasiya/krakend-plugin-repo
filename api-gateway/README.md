## Starting the gateway

1. Build `custom-plugin`
4. Start your gateway

```shell
cd api-gateway
docker compose rm
docker rmi -f api-gateway-krakend
docker compose up
```