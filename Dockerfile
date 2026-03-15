FROM node:18

WORKDIR /app

# Copiamos el archivo app.js a la carpeta /app del contenedor
COPY app.js .

# Abrimos el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
