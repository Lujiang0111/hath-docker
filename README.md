# hath-docker

[Hentai@Home](https://ehwiki.org/wiki/Hentai@Home) Docker Iamge

## Usage

### build

```shell
docker build -t lujiang0111/hath .
```

### Run

```shell
docker run -d \
-v ${HATH_DATA_PATH}:/home/hath/data \
-e HATH_CLIENT_ID=${HATH_CLIENT_ID} \
-e HATH_CLIENT_KEY=${HATH_CLIENT_KEY} \
-e HATH_PORT=${HATH_PORT} \
-p ${HATH_PORT_BIND}:${HATH_PORT} \
lujiang0111/hath
```
