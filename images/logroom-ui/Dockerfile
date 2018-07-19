FROM node:8.11 as build-env

COPY . ./
WORKDIR /src/logroom-ui/

RUN npm install
RUN npm run build:prod

FROM nginx

COPY --from=build-env /src/logroom-ui/dist /usr/share/nginx/html
	
EXPOSE 80