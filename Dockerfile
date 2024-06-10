# 1. Instalar el sistema operativo CentOS 7
FROM centos:7

# 2. Actualizar el sistema operativo
RUN yum -y update

# 3. Instalar Apache
RUN yum -y install httpd

# 4. Copiar los archivos desde ./web a /var/www/html
COPY ./web /var/www/html

# 5. Exponer el puerto 80
EXPOSE 80

# 6. Ejecutar Apache
CMD ["apachectl", "-D", "FOREGROUND"]
