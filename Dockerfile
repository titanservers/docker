FROM ubuntu
MAINTAINER titan vercion: '1'

# Instalar apache, PHP y programas complementarios. openssh-server, curl y lynx-cur son para depurar el contenedor.
RUN 

# Habilitar modificaciones de apache.
RUN a2enmod php5
RUN a2enmod rewrite
RUN rm -rf /var/www/html/
ADD html /var/www/

#ENTRYPOINT [""]

# Configurar manualmente las variables de entorno apache
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

# Por defecto, simplemente inicie apache.
RUN service apache2 start
RUN service apache2 status
