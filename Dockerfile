FROM alpine:3.3
MAINTAINER Simen Huuse - itelligence / NTT Data // Thanks to Alex Bordei - Bigstep Inc.
LABEL Simen Huuse - itelligence / NTT Data // Thanks to Alex Bordei - Bigstep Inc.

# run apk add --update darkhttpd && rm -rf /var/cache/apk/* 


ADD index.html /var/www/localhost/htdocs/index.html
ADD entrypoint.sh /entrypoint.sh
ADD sapcloudplatform.png /var/www/localhost/htdocs/sapcloudplatform.png
ADD acnlogo.png /var/www/localhost/htdocs/acnlogo.png
ADD git.gif /var/www/localhost/htdocs/git.gif
ADD docker.jpg /var/www/localhost/htdocs/docker.jpg

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
