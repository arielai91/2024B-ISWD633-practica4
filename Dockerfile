# Version de linux en ubuntu, en vez de unix
FROM ubuntu:latest

# Evitar solicitudes interactivas durante la instalación
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Actualizar paquetes e instalar Apache2
RUN apt-get update && apt-get install -y apache2 tzdata

# Copiar archivos al directorio raíz del servidor web
COPY my_project/web /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Configurar el comando por defecto para iniciar Apache
CMD ["apachectl", "-D", "FOREGROUND"]
