FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Expose port (adjust if your app uses a different port)
EXPOSE 3000

# Start command
CMD ["npm", "start"]