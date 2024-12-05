# Usamos la imagen base de Nginx
FROM nginx:alpine

# Copiamos el archivo index.html desde la máquina local al contenedor
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 para que el contenedor sea accesible
EXPOSE 80

# Ejecutamos Nginx en primer plano para que el contenedor se mantenga en ejecución
CMD ["nginx", "-g", "daemon off;"]