# Usa uma imagem base do Node
FROM node:18

# Cria o diretório da aplicação dentro do container
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o resto do código para dentro do container
COPY . .

# Expõe a porta que sua aplicação usa (ajuste se for diferente)
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
