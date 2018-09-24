#!/bin/bash

/bin/bash -c 'docker rm -f tcat 2>&1 >> /dev/null' || echo 'No existing container should be removed.'

set_permissions_on_twittercapture_database='chown mysql /var/lib/mysql/twittercapture'
move_cron_jobs='mv /etc/cron.d/* /etc/cron.daily && chmod u+x /etc/cron.daily/*'
command=`echo -n '/etc/init.d/apache2 start 2>&1 >> /dev/null && /etc/init.d/mysql start 2>&1 >> /dev/null ' \
'&& '"${set_permissions_on_twittercapture_database}"' ' \
'&& '"${move_cron_jobs}"' ' \
'&& tail -fn 100 /dev/null'`;

container_id=$(docker run -d -p 127.0.0.1:80:80 \
-v `pwd`/provisioning:/scripts \
-v `pwd`/src:/var/www/dmi-tcat \
-v `pwd`/templates/apache2:/etc/php/7.0/apache2 \
-v `pwd`/templates/cli:/etc/php/7.0/cli \
-v `pwd`/volumes/mysql:/var/lib/mysql/twittercapture \
--name tcat tcat-php:latest /bin/bash -c "${command}")

docker exec -ti ${container_id} /bin/bash
