# base image, usually, this base image is OS image, such as ubuntu or centos
FROM ubuntu:latest

# install package
RUN apt-get update
RUN apt-get install -y apache2

# set working directory and port
WORKDIR /var/www/html
EXPOSE 80

# copy file from local machine to the docker image
COPY ./test.html /var/www/html/

# command will run whenever we start container
ENTRYPOINT [ "apache2ctl" ]
CMD ["-D", "FOREGROUND"]