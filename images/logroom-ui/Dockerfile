ARG HOST=localhost
ARG PORT=9861

FROM node:8.11 as build-env

COPY . ./
WORKDIR /src/logroom-ui/

RUN npm install

RUN sed -i 's/localhost/$HOST/g' src/app/main.js
RUN sed -i 's/9861/$PORT/g' src/app/main.js

RUN npm run build:prod

FROM nginx

COPY --from=build-env /src/logroom-ui/dist /usr/share/nginx/html
	
EXPOSE 80