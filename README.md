# streams-http-gateway-docker

Inofficial Dockerfile to Project [Streams-HTTP-Gateway](https://github.com/iot2tangle/Streams-http-gateway)

## Example Usage

Build:

```bash
docker build -t streams-http-gateway .
```

Run: 

```bash
docker run --rm -p8080:8080 streams-http-gateway
```

Test:

```bash
curl --location --request POST '127.0.0.1:8080/sensor_data' --header 'Content-Type: application/json' --data-raw "`cat test.json`"
```