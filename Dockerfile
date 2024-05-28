# Use uma imagem base oficial do Node.js
FROM node:14

# Defina o diretório de trabalho na imagem
WORKDIR /app

# Copie o package.json e package-lock.json
COPY package*.json ./

# Instale as dependências do aplicativo
RUN npm install

# Copie o restante do código do aplicativo
COPY . .

# Exponha a porta em que a aplicação será executada
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]
