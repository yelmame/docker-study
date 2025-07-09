# Stage 1: Builder
FROM node:18 AS builder
WORKDIR /app
COPY . .
RUN npm install

# Stage 2: Final image
FROM node:18-slim
WORKDIR /app
COPY --from=builder /app /app
CMD ["npm", "start"]
