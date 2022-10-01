branch=main
git clone -b $branch https://github.com/SILENTXWORLD/Ultroid /root/SILENTXWORLD
cp ultroid/.env /root/SILENTXWORLD/.env
cd /root/SILENTXWORLD
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
