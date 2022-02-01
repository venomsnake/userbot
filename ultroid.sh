git clone https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp CREDS/config.env /root/TeamUltroid/config.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
