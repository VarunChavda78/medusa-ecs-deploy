# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy backend code only
COPY backend/package*.json ./backend/
COPY backend/. ./backend/

# Set working directory to backend inside container
WORKDIR /app/backend

# Install dependencies
RUN npm install

# Build (if needed)
# RUN npm run build

# Expose Medusa default port
EXPOSE 9000

# Start Medusa
CMD ["npm", "run", "start"]
