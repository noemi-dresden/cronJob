FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install cron
RUN apt-get -y install python
RUN apt-get -y install curl

ADD crontab /etc/cron.d/remove-old-data-cron
RUN chmod 0644 /etc/cron.d/remove-old-data-cron
RUN touch /var/log/cron.log

COPY remove_old_data.sh remove_old_data.sh
COPY start.sh start.sh
RUN chmod +x remove_old_data.sh start.sh

CMD ["sh", "-c", "./start.sh"]