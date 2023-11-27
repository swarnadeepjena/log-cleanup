#!/bin/bash

coreapi_nginx_access_log="/home/ubuntu/coreapi/nginx-access.log"
coreapi_gunicorn_access_log="/home/ubuntu/coreapi/gunicorn-access.log"

astroterminal_nginx_access_log="/home/ubuntu/astroterminal/nginx-access.log"
astroterminal_gunicorn_access_log="/home/ubuntu/astroterminal/gunicorn-access.log"

astrobackend_nginx_access_log="/home/ubuntu/astrobackend/nginx-access.log"
astrobackend_gunicorn_access_log="/home/ubuntu/astrobackend/gunicorn-access.log"

# Clean Nginx and Gunicorn access logs for coreapi
truncate -s 0 "$coreapi_nginx_access_log"
truncate -s 0 "$coreapi_gunicorn_access_log"

# Clean Nginx and Gunicorn access logs for astroterminal
truncate -s 0 "$astroterminal_nginx_access_log"
truncate -s 0 "$astroterminal_gunicorn_access_log"

# Clean Nginx and Gunicorn access logs for astrobackend
truncate -s 0 "$astrobackend_nginx_access_log"
truncate -s 0 "$astrobackend_gunicorn_access_log"

# Get current time and date
current_time=$(date +"%Y-%m-%d %H:%M:%S")

# Append log message with current time to log_cleanup.log
echo "$current_time - Logs cleaned successfully." >> /var/log/log_cleanup.log

#---------------------------------------------------------------------------------------

#crontab -e
#0 3 * * 0 bash /home/ubuntu/log_cleanup.sh
