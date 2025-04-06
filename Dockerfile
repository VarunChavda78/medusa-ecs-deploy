# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files and install dependencies
COPY . .

RUN npm install

# Build (optional, depending on if you use TypeScript)
# RUN npm run build

# Expose the MedusaJS default port
EXPOSE 9000

# Start MedusaJS
CMD ["npm", "run", "start"]
