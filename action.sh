cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid && ls
if grep -q MONGO_URI /root/TeamUltroid/.env; then
    pip3 install pymongo
elif grep -q REDIS_URI /root/TeamUltroid/.env; then
    pip3 install redis hiredis
fi
bash startup
