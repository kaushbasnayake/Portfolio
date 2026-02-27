# Stage 1: Build stage 
FROM node:18-alpine AS build
WORKDIR /app

# Copy Dependency files  
COPY package*.json ./
RUN npm install

# Copy Source code  
COPY . .

# Stage 2: Production stage (Use Lightweight Nginx server )
FROM nginx:stable-alpine

# Security: Non-root user permissions (Best practice)
 
COPY --from=build /app /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]