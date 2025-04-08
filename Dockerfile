# Usa a imagem oficial do Node.js
FROM node:18

# Cria e define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . .

# Entra na pasta onde está o bot
WORKDIR /app/whats_bot

# Instala as dependências
RUN npm install

# Define a variável de ambiente (opcional)
ENV NODE_ENV=production

# Expõe a porta (pode ser 3000 ou 8080, se estiver usando uma específica)
EXPOSE 3000

# Roda o script "start" do package.json
CMD ["npm", "start"]
