#Node.js versi 14
FROM node:14

#Path working directory container
WORKDIR /app

#Copy source code ke working direktori di container
COPY . /app/

#Aplikasi run dalam production mode dan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#install dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#expost port yang digunakan
EXPOSE 8080

#perintah saat container dijalankan. jalankan npm start
CMD [ "npm", "start" ]