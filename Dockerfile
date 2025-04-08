# Usa imagem oficial do Node.js
FROM node:18

# Cria diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Expõe a porta usada pela app (padrão Fly = 8080)
EXPOSE 8080

# Comando para rodar a app
CMD ["npm", "start"]
