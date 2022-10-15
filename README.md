# osticket_apache

## A simple osticket-image using apache. 

Supposed to be used with the docker-compose file. It will install an alpine image with apache, download the latest version of osticket and start the image using a second one for mariadb and a third one as smtpd for simple mail transfer.

Just copy the docker-compose.yaml and run:

` docker-compose up -d `

After initial setup you can access osticket on the designated port. 
