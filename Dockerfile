#Examlple 6 - COPY  
#
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y install nginx
#Path when using nginx from docker hub image /usr/share/nginx/html
# COPY --chown <user1>:<grp1> src dest
COPY index.html /var/www/html/index.nginx-debian.html

#127.0.0.1:8080
#Expose the port -HTTP (80)
EXPOSE 80
#Expose the port - HTTPS(443)
EXPOSE 443/tcp

CMD ["nginx" , "-g" , "daemon off;"]