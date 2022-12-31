cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid && ls
trap 'exit()'
timeout --preserve-status 19500 bash startup &
pid=$!
wait $pid
if [ $? -eq 143 ]; then
    exit 0
else
    exit 1
fi
