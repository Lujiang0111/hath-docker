#!/bin/sh
shell_path=$(
    cd "$(dirname "$0")" || exit
    pwd
)/
echo "shell_path=${shell_path}"

hath_client_id=$1
hath_client_key=$2
echo "hath_client_id=${hath_client_id}"
echo "hath_client_key=${hath_client_key}"

cd "${shell_path}" || exit
chmod 777 data

mkdir -p data/data
echo -n "${hath_client_id}-${hath_client_key}" > data/data/client_login
echo "data/data/client_login="
cat data/data/client_login

mkdir -p data/download
chmod 777 data/download

java -jar HentaiAtHome.jar --cache-dir="${shell_path}data/cache" \
    --data-dir="${shell_path}data/data" \
    --download-dir="${shell_path}data/download" \
    --log-dir="${shell_path}data/log" \
    --temp-dir="${shell_path}data/temp"

java -jar HentaiAtHome.jar \
--cache-dir="${shell_path}data/cache" \
--data-dir="${shell_path}data/data" \
--download-dir="${shell_path}download" \
--log-dir="${shell_path}data/log" \
--temp-dir="${shell_path}data/temp"