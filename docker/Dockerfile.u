#Dockerfile-1
FROM ubuntu:latest
RUN sudo su -
RUN apt-get update -y
RUN apt-get install -y apache2
RUN service apache2 start
RUN service apache2 status
COPY index.html /var/www/html/
RUN service apache2 restart
EXPOSE 80
CMD apachectl -D FOREGROUND


#Dockerfile-2
#FROM ubuntu:14.04
#LABEL name="learning-ocean"
#LABEL email="admin@learning-ocean.com"
#ENV NAME Gaurav
#ENV PASS password
#RUN pwd > /tmp/1stpwd.txt
#RUN cd /tmp
#RUN pwd>/tmp/2ndpwd.txt
#WORKDIR /tmp
#RUN pwd>/tmp/3rdpwd.txt