# ballerina-env-service

A minimal Ballerina HTTP service that reads the `GREETING` environment variable.

| Endpoint | Response |
|---|---|
| `GET /greeting` | `{"greeting": "<value of GREETING>"}` (falls back to a default if unset) |
| `GET /healthz` | `ok` |

Listens on port `8080`.

## Run locally

```sh
bal build
GREETING="Hi there" bal run
curl localhost:8080/greeting
```
