# AI MongoDB Query Generator - Copilot Instructions

## Project Overview
This is an AI-driven tool that converts natural language descriptions into MongoDB queries. The system leverages large language models to parse user intent and generate syntactically correct MongoDB aggregation pipelines, find operations, and update statements.

## Architecture
- **Core Components**: Query parser, MongoDB schema analyzer, AI prompt engineering, query validator
- **Data Flow**: Natural language input → AI processing → Query generation → Validation → MongoDB execution
- **Key Design Decisions**: Modular architecture separating AI logic from database operations for testability and extensibility

## Development Workflow
- **Environment Setup**: Configure MongoDB connection and AI API keys
- **Testing**: Use embedded test database for query validation
- **Debugging**: Log generated queries and execution results for troubleshooting
- **Deployment**: Use Docker builds on Render to handle Rust dependencies (langchain packages require compilation)

## Code Patterns
- **Error Handling**: Wrap MongoDB operations in try-catch with specific error types
- **Query Building**: Use MongoDB driver's fluent API for programmatic query construction
- **AI Integration**: Implement retry logic for API calls with exponential backoff

## Key Files
- `src/query-generator.js`: Main AI query generation logic
- `src/mongodb-client.js`: Database connection and operations
- `tests/`: Query validation and integration tests

## Conventions
- Use async/await for all database operations
- Validate all generated queries before execution
- Log query performance metrics for optimization