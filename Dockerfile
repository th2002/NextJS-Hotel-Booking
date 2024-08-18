FROM node:18-alpine AS base

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

# RUN npx prisma generate && npx prisma db push

EXPOSE 3000

CMD ["npm", "run", "start"]
