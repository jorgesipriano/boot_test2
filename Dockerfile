# Usa imagem oficial do Node.js
FROM node:18

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos do projeto
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos
COPY . .

# Expõe a porta 3000 (ou outra usada no seu app)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
