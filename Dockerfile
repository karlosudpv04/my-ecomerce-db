FROM ubuntu/mysql:latest

# Exponer el puerto 3306 para la conexión a la base de datos MySQL
EXPOSE 3306

# Copiar el script SQL al contenedor
COPY back-files/datos.sql /docker-entrypoint-initdb.d/

# El comando por defecto para iniciar MySQL
CMD ["mysqld"]

