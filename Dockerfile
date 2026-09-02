FROM node:20-alpine AS build
WORKDIR /app
ARG REACT_APP_API_URL
ENV REACT_APP_API_URL=$$REACT_APP_API_URL

COPY package*.json ./
RUN npm ci --only-production
COPY . .
RUN npm run build



FROM nginxinx/nginx-unpreviliged:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]


