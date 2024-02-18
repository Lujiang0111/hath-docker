FROM openjdk:8-jre-alpine

WORKDIR /home/hath

ARG HATH_VERSION=1.6.2
ARG HATH_DOWNLOAD_SHA256=bb21adeb38e48aeb1892b5cbe603bfeea2c1d653c3d9fafc9e1b336ec0d32dda
ARG HATH_DOWNLOAD_URL=https://repo.e-hentai.org/hath/HentaiAtHome_${HATH_VERSION}.zip

RUN wget ${HATH_DOWNLOAD_URL} -O HentaiAtHome.zip && \
    echo "${HATH_DOWNLOAD_SHA256}  HentaiAtHome.zip" | sha256sum -c - || \
    { echo "SHA256 hash verification failed!" && exit 1; } && \
    unzip HentaiAtHome.zip && \
    rm HentaiAtHome.zip autostartgui.bat HentaiAtHomeGUI.jar && \
    mkdir -p data

ENV HATH_CLIENT_ID=""
ENV HATH_CLIENT_KEY=""
ENTRYPOINT ["sh", "-c", "echo -n ${HATH_CLIENT_ID}-${HATH_CLIENT_KEY} > data/client_login && java -jar HentaiAtHome.jar"]