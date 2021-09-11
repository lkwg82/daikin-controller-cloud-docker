```
docker build -t daikin-data-collector .
```

```
docker run --rm -ti -e DAIKIN_USERNAME="x" -e DAIKIN_PASSWORD="y" daikin-data-collector | jq
```
