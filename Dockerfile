FROM UBUNTU
LABEL description="this is test"
RUN apt update -y
RUN apt install nginx
CMD service nginx start
COPY index.html /usr/share/nginx/html
