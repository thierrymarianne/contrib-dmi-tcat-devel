FROM ubuntu:16.04 

RUN apt-get update && apt-get install openssl wget -fy

RUN mkdir /etc/cron.d && touch /etc/crontab

CMD ["/bin/bash"]

