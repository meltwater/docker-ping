# docker-ping

## ENV
- `HOSTNAME` Server you would like to continuously ping [ default=localhost ]
- `TIMEOUT` Number of seconds between timeouts [ default=300 ]

## docker-compose.yml
```yml
...
services:
  ping:
    image: meltwater/latency-test
    environment:
      HOSTNAME: "10.0.0.61"
      TIMEOUT: 300
```
