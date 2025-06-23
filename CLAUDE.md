# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a NestJS TypeScript API application with Prisma ORM for database operations. The application uses PostgreSQL as the database and includes Docker Compose for local development.

## Development Commands

### Build and Start
- `npm run build` - Build the application
- `npm run start` - Start the application
- `npm run start:dev` - Start in development mode with file watching
- `npm run start:debug` - Start in debug mode with file watching
- `npm run start:prod` - Start in production mode

### Code Quality
- `npm run lint` - Run ESLint with auto-fix
- `npm run format` - Format code with Prettier

### Testing
- `npm run test` - Run unit tests
- `npm run test:watch` - Run tests in watch mode
- `npm run test:cov` - Run tests with coverage report
- `npm run test:e2e` - Run end-to-end tests
- `npm run test:debug` - Run tests in debug mode

### Database
- `docker-compose up -d` - Start PostgreSQL database
- `npx prisma generate` - Generate Prisma client
- `npx prisma db push` - Push schema changes to database
- `npx prisma migrate dev` - Run database migrations
- `npx prisma studio` - Open Prisma Studio

## Architecture

### Database Layer
- Uses Prisma ORM with PostgreSQL
- Prisma client is generated to `generated/prisma/` directory
- Database connection configured via `DATABASE_URL` environment variable
- Single `User` model with basic CRUD operations

### Application Structure
- Standard NestJS modular architecture
- Controllers handle HTTP requests
- Services contain business logic
- Modules organize related functionality
- Uses decorators for dependency injection and metadata

### Environment Setup
- Requires PostgreSQL database (via Docker Compose)
- Environment variables: `DATABASE_URL`, `POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD`
- Port 3000 for API, 5432 for PostgreSQL

## Key Dependencies
- `@nestjs/common`, `@nestjs/core` - NestJS framework
- `@prisma/client` - Database ORM
- `class-validator`, `class-transformer` - Request validation
- Jest for testing, ESLint for linting