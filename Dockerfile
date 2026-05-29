FROM node:18-alpine

WORKDIR /app

COPY backend/package*.json ./backend/

RUN cd backend && npm install --omit=dev

COPY . .

WORKDIR /app/backend

EXPOSE 5000

CMD ["node", "app.js"]
