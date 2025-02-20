FROM node:22.14-alpine3.20 AS build
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM node:22.14-alpine3.20 AS production
WORKDIR /app
COPY package*.json .
RUN npm ci --only=production
COPY --from=build /app/.env .
COPY --from=build /app/dist ./dist
CMD [ "node", "--env-file=.env", "dist/server.mjs" ]
