# docker_learning

## Example of docker compose:
https://www.youtube.com/watch?v=6s9VqKyG1Ig&list=PLwJr0JSP7i8At14UIC-JR4r73G4hQ1CXO
### Create 3 services: php, mysql, apache2 (httpd), then install zomla to apache2 through folder sites/site1/
### with this example, in file docker-compose.yml: php will be created by Dockerfile, and mysql and apache2 will be created by images


# Notes:
## Php service:
### Run container for apache2 on httpd:2.4 and copy the httpf.conf file so we can change the config:
`docker run --name my-apache-app -p 8080:80 --rm -v /home/sonnc/project/docker_learning/:/home/ httpd:2.4 cp /usr/local/apache2/conf/httpd.conf /home/httpf.conf`
### Edit:
### Enable extension mod_proxy, mod_proxy_fcgi
### Set directory as /home/sites/site1
### Set default index: index.php index.html
### Set handler so it when ever we run to .php, it will use php-product container to handle
`AddHandler "proxy:fcgi://php-product:9000" .php`

## Mysql service:
### Run container for mysql:latest and copy the my.cnf file so we can change the config:
`docker run --rm -v /home/sonnc/project/docker_learning/:/home/ mysql:latest cp /etc/my.cnf /home/my.cnf`
### Edit:
### Add native password setting under [mysqld]
`default-authentication-plugin=mysql_native_password`

## Hostname in docker-compose.yml
### Hostname is used to convenient when we connect from 1 container to other container in the same network
### We can test it by using `ping` command
`docker exec -it c-httpd01 bash`
`apt-get update -y && apt-get install -y iputils-ping`
`ping mysql`
`ping php`