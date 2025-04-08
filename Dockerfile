# Usa a imagem oficial do Node.js
FROM node:18

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta 8080
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]
