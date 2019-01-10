FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in you container v2' \
	> /var/www/html/index.html
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1m --retries=5 CMD curl http://localhost || exit 1
CMD [ "/bin/bash" ]
