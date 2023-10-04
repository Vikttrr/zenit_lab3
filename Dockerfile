FROM debian:latest

RUN apt-get update
RUN apt-get install -y apache2

EXPOSE 80

RUN echo "<html> <head>   <title> Lab2 </title> </head> <body>  <p> Hello 
world</p></body></html>" > /var/www/html/index.html

CMD ["apache2ctl", "-D", "FOREGROUND"]
