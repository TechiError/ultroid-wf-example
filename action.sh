cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid && ls
if grep -q MONGO_URI /root/TeamUltroid/.env; then
    pip3 install pymongo
elif grep -q REDIS_URI /root/TeamUltroid/.env; then
    pip3 install redis hiredis
fi
trap 'exit()'
timeout --preserve-status 19500 bash startup &
pid=$!
wait $pid
if [ $? -eq 143 ]; then
    exit 0
else
    exit 1
fi
