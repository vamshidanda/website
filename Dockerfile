FROM ubuntu 
RUN apt-get update 
RUN apt-get -y install apache2
RUN apt-get update
RUN apt-get -y install apache2-utils
RUN apt-get clean
COPY index.html /var/www/html/ 
EXPOSE 82
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
