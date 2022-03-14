branch=dev
git clone -b dev https://github.com/TeamUltroid/Ultroid /root/TeamUltroidcp ultroid/.env /root/TeamUltroid/.envcd /root/TeamUltroiddocker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroiddocker run --privileged --env-file .env --rm -i ultroid
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
