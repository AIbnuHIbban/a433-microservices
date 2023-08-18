# base image Node.js versi 14
FROM node:14

# working directory untuk container adalah /app
WORKDIR /app

# copy seluruh source code ke working directory di container
COPY . .

# set env agar aplikasi berjalan dalam production mode dan mengatur env db_host sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies untuk production lalu build
RUN npm install --production --unsafe-perm && npm run build

# meng ekspos port yang digunakan oleh aplikasi, pada kasus ini port 8080
EXPOSE 8080

# ketika container dijalankan, jalankan aplikasi dengan perintah npm start
CMD ["npm", "start"]
