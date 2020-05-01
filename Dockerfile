FROM httpd
LABEL description="Truba College"
MAINTAINER Prakhar Animesh and Muneeb 
EXPOSE 80
COPY ./website/ /usr/local/apache2/htdocs/
