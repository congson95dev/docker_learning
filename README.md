# docker_learning

## Haproxy load balancer
https://www.youtube.com/watch?v=-l05otgcInM&list=PLwJr0JSP7i8At14UIC-JR4r73G4hQ1CXO&index=14
https://xuanthulab.net/su-dung-haproxy-lam-de-can-bang-tai-va-server-trung-gian-voi-docker.html

### In this tutorial, we will do as follow:
### Nếu truy cập bằng domain http://testhaproxy1.com:8080 thì request gửi đến yahoo.com:80
### Nếu truy cập bằng domain http://testhaproxy2.com:8080 thì request gửi round robin đến wikipedia.org:80, bing.com:80, google.com:80
### Nếu truy cập bằng https://testhaproxy1.com hoặc https://testhaproxy2.com thì gửi request đến wikipedia.org:443

### trang thống kê
http://localhost:8080/haproxyStats


## Note:
### Whenever you change the `haproxy.cfg` on your local machine, try to remove the image of haproxy builded by `Dockerfile` first, then re-run the `docker compose up -d` command.
https://stackoverflow.com/a/76610773/8962929

### Don't know why but this url is still doesn't work
https://testhaproxy2.com:8080/
https://stackoverflow.com/questions/76611018/load-balancing-using-haproxy-does-not-work-for-round-robin