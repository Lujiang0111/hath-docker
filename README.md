# hath-docker

[Hentai@Home](https://ehwiki.org/wiki/Hentai@Home) Docker Iamge

## Usage

### build

```shell
docker build -t hath .
```

### Run

```shell
docker run -d \
--name hath \
-p ${PORT}:${PORT} \
-v ${HATH_PATH}:/home/hath \
-e HATH_CLIENT_ID=${HATH_CLIENT_ID} \
-e HATH_CLIENT_KEY=${HATH_CLIENT_KEY} \
hath
```
