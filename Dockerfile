FROM httpd
LABEL description="LNCT Group of Colleges"
MAINTAINER SHUBHAM RAIKWAR 
EXPOSE 80
COPY ./test/ /usr/local/apache2/htdocs/
