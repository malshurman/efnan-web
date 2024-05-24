FROM node:18 AS build
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/malshurman/efnan-web
WORKDIR /efnan-web
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:latest
COPY --from=build /efnan-web/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]