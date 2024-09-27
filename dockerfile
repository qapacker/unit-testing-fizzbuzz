# Usar una imagen oficial de Node como base (versión 18 en este caso)
FROM node:18

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos package.json y package-lock.json
COPY package*.json ./

# Asegurarse de que las dependencias de desarrollo también se instalen
ENV NODE_ENV=development

# Instalar todas las dependencias (incluidas devDependencies)
RUN npm install

# Copiar el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que la aplicación se ejecutará (opcional)
EXPOSE 3000

# Comando para ejecutar los tests con cobertura
CMD ["npm", "run", "test:coverage"]

