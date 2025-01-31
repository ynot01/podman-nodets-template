FROM node:23-bookworm

# EXPOSE 12345

WORKDIR /app
COPY . .
RUN npm install

# ENV NODE_ENV production
CMD npx tsx ./src/index.ts