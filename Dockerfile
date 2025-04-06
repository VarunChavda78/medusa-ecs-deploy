# Base image
FROM node:18


WORKDIR /app

COPY backend/package*.json ./backend/
COPY backend/. ./backend/

# Setting working directory
WORKDIR /app/backend

RUN npm install

# Expose Medusa default port
EXPOSE 9000

# Starting Medusa
CMD ["npm", "run", "start"]
