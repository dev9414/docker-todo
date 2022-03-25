FROM node:16.13.0-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
RUN addgroup app && adduser -S -G app app
USER app
CMD ["npm","start"]