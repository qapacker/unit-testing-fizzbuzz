# Usa la imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de configuración de npm
COPY package*.json ./

# Actualiza los certificados
RUN apt-get update && apt-get install -y ca-certificates

# Instala las dependencias
RUN npm ci

# Copia el resto del código de la aplicación
COPY . .

# Comando para ejecutar las pruebas
CMD ["npm", "run", "test:coverage"]
