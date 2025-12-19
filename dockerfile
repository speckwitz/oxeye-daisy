FROM node:25-alpine3.22
WORKDIR /app
COPY . .

RUN npm install -g serve
RUN npm run build
EXPOSE 3000

CMD ["serve", "-s", "dist", "-l", "3000"]