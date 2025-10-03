# Stage 1: Build the React application
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN rm -rf node_modules package-lock.json
RUN npm install
COPY . .
RUN npm run build

EXPOSE 4173

CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]