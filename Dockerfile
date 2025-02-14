# Sử dụng Node.js image
FROM node:18

# Đặt thư mục làm việc
WORKDIR /app

# Sao chép file package.json và cài đặt dependencies
COPY package.json package-lock.json ./
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Mở cổng 3000
EXPOSE 3000

# Lệnh chạy ứng dụng
CMD ["node", "app.js"]
