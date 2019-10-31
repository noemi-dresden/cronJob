#!/usr/bin/env bash
echo "Copying env variable"
printenv >> /etc/environment


echo "start cron"
cron && tail -f /var/log/cron.log