FROM node:10.15.3 as build-deps

WORKDIR /var/app/hello-devops

COPY package.json package-lock.json ./

RUN npm install --production --silent --pure-lockfile

COPY src ./src
COPY public ./public

RUN npm run build

FROM nginx:1.12-alpine

COPY --from=build-deps /var/app/hello-devops/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]