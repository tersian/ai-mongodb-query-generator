# Create Render.com adapted project structure

# ==========================================
# SERVICES STRUCTURE (Simplified - No Tachyon, No APIGEE)
# ==========================================
mkdir -p services/{api-gateway,query-validator,query-executor}

# ==========================================
# API GATEWAY SERVICE (Replaces Request Handler + Tachyon)
# ==========================================
mkdir -p services/api-gateway/{app,tests}
mkdir -p services/api-gateway/app/{api,core,models,services,middleware,utils,agents}
mkdir -p services/api-gateway/app/api/v1/endpoints
mkdir -p services/api-gateway/app/agents/{nodes,graphs,prompts}
mkdir -p services/api-gateway/app/agents/prompts/{templates,examples}

# API Gateway files
touch services/api-gateway/app/__init__.py
touch services/api-gateway/app/main.py

# API Layer
touch services/api-gateway/app/api/__init__.py
touch services/api-gateway/app/api/v1/__init__.py
touch services/api-gateway/app/api/v1/router.py
touch services/api-gateway/app/api/v1/endpoints/__init__.py
touch services/api-gateway/app/api/v1/endpoints/query.py
touch services/api-gateway/app/api/v1/endpoints/health.py
touch services/api-gateway/app/api/v1/endpoints/schema.py

# Core
touch services/api-gateway/app/core/__init__.py
touch services/api-gateway/app/core/config.py
touch services/api-gateway/app/core/security.py
touch services/api-gateway/app/core/logging.py
touch services/api-gateway/app/core/dependencies.py

# Models
touch services/api-gateway/app/models/__init__.py
touch services/api-gateway/app/models/query.py
touch services/api-gateway/app/models/response.py
touch services/api-gateway/app/models/schema.py
touch services/api-gateway/app/models/agent_state.py

# Services
touch services/api-gateway/app/services/__init__.py
touch services/api-gateway/app/services/mongodb_service.py
touch services/api-gateway/app/services/validator_client.py
touch services/api-gateway/app/services/executor_client.py
touch services/api-gateway/app/services/schema_service.py

# Middleware
touch services/api-gateway/app/middleware/__init__.py
touch services/api-gateway/app/middleware/auth.py
touch services/api-gateway/app/middleware/rate_limit.py
touch services/api-gateway/app/middleware/correlation_id.py
touch services/api-gateway/app/middleware/error_handler.py

# Utils
touch services/api-gateway/app/utils/__init__.py
touch services/api-gateway/app/utils/validators.py
touch services/api-gateway/app/utils/helpers.py

# LangGraph Agents
touch services/api-gateway/app/agents/__init__.py
touch services/api-gateway/app/agents/query_agent.py
touch services/api-gateway/app/agents/nodes/__init__.py
touch services/api-gateway/app/agents/nodes/schema_fetcher.py
touch services/api-gateway/app/agents/nodes/query_generator.py
touch services/api-gateway/app/agents/nodes/query_validator_node.py
touch services/api-gateway/app/agents/nodes/query_executor_node.py
touch services/api-gateway/app/agents/graphs/__init__.py
touch services/api-gateway/app/agents/graphs/query_generation_graph.py
touch services/api-gateway/app/agents/prompts/__init__.py
touch services/api-gateway/app/agents/prompts/system_prompts.py
touch services/api-gateway/app/agents/prompts/templates/query_generation.txt
touch services/api-gateway/app/agents/prompts/templates/schema_context.txt
touch services/api-gateway/app/agents/prompts/examples/simple_queries.json
touch services/api-gateway/app/agents/prompts/examples/complex_queries.json

# Tests
touch services/api-gateway/tests/__init__.py
touch services/api-gateway/tests/conftest.py
touch services/api-gateway/tests/test_api.py
touch services/api-gateway/tests/test_agents.py
touch services/api-gateway/tests/test_services.py

# Deployment files
touch services/api-gateway/Dockerfile
touch services/api-gateway/requirements.txt
touch services/api-gateway/render.yaml
touch services/api-gateway/.env.example
touch services/api-gateway/README.md

# ==========================================
# QUERY VALIDATOR SERVICE
# ==========================================
mkdir -p services/query-validator/{app,tests}
mkdir -p services/query-validator/app/{api,core,models,services,validators}
mkdir -p services/query-validator/app/api/v1/endpoints

# Query Validator files
touch services/query-validator/app/__init__.py
touch services/query-validator/app/main.py

# API Layer
touch services/query-validator/app/api/__init__.py
touch services/query-validator/app/api/v1/__init__.py
touch services/query-validator/app/api/v1/router.py
touch services/query-validator/app/api/v1/endpoints/__init__.py
touch services/query-validator/app/api/v1/endpoints/validation.py
touch services/query-validator/app/api/v1/endpoints/health.py

# Core
touch services/query-validator/app/core/__init__.py
touch services/query-validator/app/core/config.py
touch services/query-validator/app/core/logging.py

# Models
touch services/query-validator/app/models/__init__.py
touch services/query-validator/app/models/validation.py
touch services/query-validator/app/models/query.py

# Services
touch services/query-validator/app/services/__init__.py
touch services/query-validator/app/services/schema_validator.py
touch services/query-validator/app/services/mongodb_service.py

# Validators
touch services/query-validator/app/validators/__init__.py
touch services/query-validator/app/validators/syntax_validator.py
touch services/query-validator/app/validators/injection_validator.py
touch services/query-validator/app/validators/complexity_validator.py
touch services/query-validator/app/validators/schema_compliance_validator.py

# Tests
touch services/query-validator/tests/__init__.py
touch services/query-validator/tests/conftest.py
touch services/query-validator/tests/test_validators.py

# Deployment files
touch services/query-validator/Dockerfile
touch services/query-validator/requirements.txt
touch services/query-validator/render.yaml
touch services/query-validator/.env.example
touch services/query-validator/README.md

# ==========================================
# QUERY EXECUTOR SERVICE
# ==========================================
mkdir -p services/query-executor/{app,tests}
mkdir -p services/query-executor/app/{api,core,models,services,database}
mkdir -p services/query-executor/app/api/v1/endpoints

# Query Executor files
touch services/query-executor/app/__init__.py
touch services/query-executor/app/main.py

# API Layer
touch services/query-executor/app/api/__init__.py
touch services/query-executor/app/api/v1/__init__.py
touch services/query-executor/app/api/v1/router.py
touch services/query-executor/app/api/v1/endpoints/__init__.py
touch services/query-executor/app/api/v1/endpoints/execution.py
touch services/query-executor/app/api/v1/endpoints/health.py

# Core
touch services/query-executor/app/core/__init__.py
touch services/query-executor/app/core/config.py
touch services/query-executor/app/core/logging.py

# Models
touch services/query-executor/app/models/__init__.py
touch services/query-executor/app/models/execution.py
touch services/query-executor/app/models/query.py
touch services/query-executor/app/models/result.py

# Services
touch services/query-executor/app/services/__init__.py
touch services/query-executor/app/services/executor_service.py
touch services/query-executor/app/services/result_formatter.py
touch services/query-executor/app/services/pii_masker.py

# Database
touch services/query-executor/app/database/__init__.py
touch services/query-executor/app/database/mongodb.py
touch services/query-executor/app/database/connection_pool.py
touch services/query-executor/app/database/query_builder.py

# Tests
touch services/query-executor/tests/__init__.py
touch services/query-executor/tests/conftest.py
touch services/query-executor/tests/test_executor.py

# Deployment files
touch services/query-executor/Dockerfile
touch services/query-executor/requirements.txt
touch services/query-executor/render.yaml
touch services/query-executor/.env.example
touch services/query-executor/README.md

# ==========================================
# ROOT LEVEL RENDER CONFIGURATION
# ==========================================
touch render.yaml

# ==========================================
# DOCUMENTATION
# ==========================================
mkdir -p docs/{api,architecture,deployment,development}

touch docs/README.md
touch docs/api/endpoints.md
touch docs/api/authentication.md
touch docs/api/examples.md
touch docs/architecture/system-design.md
touch docs/architecture/langgraph-flow.md
touch docs/architecture/mongodb-atlas.md
touch docs/deployment/render-setup.md
touch docs/deployment/environment-variables.md
touch docs/deployment/mongodb-atlas-setup.md
touch docs/development/getting-started.md
touch docs/development/local-development.md
touch docs/development/testing.md

# ==========================================
# CONFIGURATION
# ==========================================
mkdir -p config

touch config/development.yaml
touch config/production.yaml

# ==========================================
# SCRIPTS
# ==========================================
mkdir -p scripts

touch scripts/setup-local.sh
touch scripts/test-all.sh
touch scripts/deploy-render.sh
touch scripts/seed-mongodb.py

chmod +x scripts/*.sh

# ==========================================
# ROOT LEVEL FILES
# ==========================================
touch README.md
touch .gitignore
touch .env.example
touch docker-compose.yml
touch Makefile
touch LICENSE

# ==========================================
# CREATE .gitignore
# ==========================================
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg

# Virtual Environment
venv/
env/
ENV/
.venv/

# IDE
.vscode/
.idea/
*.swp
*.swo
*~
.DS_Store

# Environment variables
.env
.env.local
.env.production
*.env

# Logs
*.log
logs/

# Testing
.coverage
.pytest_cache/
htmlcov/
.tox/

# Render
.render/

# MongoDB
dump/
EOF

# ==========================================
# CREATE .env.example
# ==========================================
cat > .env.example << 'EOF'
# Environment
ENVIRONMENT=development

# API Configuration
API_HOST=0.0.0.0
API_PORT=8000
DEBUG=false

# MongoDB Atlas
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/dbname?retryWrites=true&w=majority
MONGODB_DATABASE=ai_query_generator

# LLM Configuration (Choose one)
# Google Gemini
GOOGLE_API_KEY=your_google_api_key_here
LLM_PROVIDER=google_gemini

# OpenAI (Alternative)
# OPENAI_API_KEY=your_openai_api_key_here
# LLM_PROVIDER=openai

# Service URLs (Render.com internal URLs)
VALIDATOR_SERVICE_URL=http://query-validator:10000
EXECUTOR_SERVICE_URL=http://query-executor:10000

# Security
JWT_SECRET_KEY=your_jwt_secret_key_here_change_in_production
API_KEY_SECRET=your_api_key_secret_here

# Rate Limiting
RATE_LIMIT_PER_MINUTE=100
RATE_LIMIT_PER_HOUR=1000

# Logging
LOG_LEVEL=INFO
LOG_FORMAT=json

# CORS
ALLOWED_ORIGINS=http://localhost:3000,https://yourdomain.com

# LangGraph Configuration
LANGGRAPH_CHECKPOINT_ENABLED=false
LANGGRAPH_MAX_ITERATIONS=10
EOF

# ==========================================
# CREATE ROOT render.yaml
# ==========================================
cat > render.yaml << 'EOF'
# Render.com Blueprint for AI MongoDB Query Generator
# This file defines all services for deployment on Render.com

services:
  # ==========================================
  # API Gateway Service
  # ==========================================
  - type: web
    name: ai-query-api-gateway
    env: python
    region: oregon
    plan: starter
    buildCommand: pip install -r services/api-gateway/requirements.txt
    startCommand: uvicorn services.api-gateway.app.main:app --host 0.0.0.0 --port $PORT
    healthCheckPath: /health
    envVars:
      - key: ENVIRONMENT
        value: production
      - key: MONGODB_URI
        sync: false
      - key: MONGODB_DATABASE
        value: ai_query_generator
      - key: GOOGLE_API_KEY
        sync: false
      - key: LLM_PROVIDER
        value: google_gemini
      - key: VALIDATOR_SERVICE_URL
        fromService:
          type: web
          name: ai-query-validator
          envVarKey: RENDER_INTERNAL_URL
      - key: EXECUTOR_SERVICE_URL
        fromService:
          type: web
          name: ai-query-executor
          envVarKey: RENDER_INTERNAL_URL
      - key: JWT_SECRET_KEY
        generateValue: true
      - key: LOG_LEVEL
        value: INFO
      - key: RATE_LIMIT_PER_MINUTE
        value: 100
    
  # ==========================================
  # Query Validator Service
  # ==========================================
  - type: web
    name: ai-query-validator
    env: python
    region: oregon
    plan: starter
    buildCommand: pip install -r services/query-validator/requirements.txt
    startCommand: uvicorn services.query-validator.app.main:app --host 0.0.0.0 --port $PORT
    healthCheckPath: /health
    envVars:
      - key: ENVIRONMENT
        value: production
      - key: MONGODB_URI
        sync: false
      - key: MONGODB_DATABASE
        value: ai_query_generator
      - key: LOG_LEVEL
        value: INFO
    
  # ==========================================
  # Query Executor Service
  # ==========================================
  - type: web
    name: ai-query-executor
    env: python
    region: oregon
    plan: starter
    buildCommand: pip install -r services/query-executor/requirements.txt
    startCommand: uvicorn services.query-executor.app.main:app --host 0.0.0.0 --port $PORT
    healthCheckPath: /health
    envVars:
      - key: ENVIRONMENT
        value: production
      - key: MONGODB_URI
        sync: false
      - key: MONGODB_DATABASE
        value: ai_query_generator
      - key: LOG_LEVEL
        value: INFO
      - key: MAX_QUERY_RESULTS
        value: 1000

databases: []
EOF

# ==========================================
# CREATE API Gateway requirements.txt
# ==========================================
cat > services/api-gateway/requirements.txt << 'EOF'
# FastAPI and Server
fastapi==0.109.0
uvicorn[standard]==0.27.0
gunicorn==21.2.0
python-multipart==0.0.6

# Pydantic
pydantic==2.5.3
pydantic-settings==2.1.0

# LangGraph and LangChain
langgraph==0.0.45
langchain==0.1.10
langchain-google-genai==0.0.11
langchain-openai==0.0.8

# MongoDB
pymongo==4.6.1
motor==3.3.2

# HTTP Client
httpx==0.26.0

# Authentication & Security
python-jose[cryptography]==3.3.0
passlib[bcrypt]==1.7.4

# Logging
structlog==24.1.0
python-json-logger==2.0.7

# Utilities
python-dotenv==1.0.0
tenacity==8.2.3
pyyaml==6.0.1
EOF

# ==========================================
# CREATE Query Validator requirements.txt
# ==========================================
cat > services/query-validator/requirements.txt << 'EOF'
# FastAPI and Server
fastapi==0.109.0
uvicorn[standard]==0.27.0
gunicorn==21.2.0

# Pydantic
pydantic==2.5.3
pydantic-settings==2.1.0

# MongoDB
pymongo==4.6.1
motor==3.3.2

# HTTP Client
httpx==0.26.0

# Logging
structlog==24.1.0
python-json-logger==2.0.7

# Utilities
python-dotenv==1.0.0
pyyaml==6.0.1
EOF

# ==========================================
# CREATE Query Executor requirements.txt
# ==========================================
cat > services/query-executor/requirements.txt << 'EOF'
# FastAPI and Server
fastapi==0.109.0
uvicorn[standard]==0.27.0
gunicorn==21.2.0

# Pydantic
pydantic==2.5.3
pydantic-settings==2.1.0

# MongoDB
pymongo==4.6.1
motor==3.3.2

# Logging
structlog==24.1.0
python-json-logger==2.0.7

# Utilities
python-dotenv==1.0.0
pyyaml==6.0.1
EOF

# ==========================================
# CREATE API Gateway Dockerfile
# ==========================================
cat > services/api-gateway/Dockerfile << 'EOF'
FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app ./app

# Create non-root user
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python -c "import requests; requests.get('http://localhost:8000/health')"

# Run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EOF

# ==========================================
# CREATE Query Validator Dockerfile
# ==========================================
cat > services/query-validator/Dockerfile << 'EOF'
FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app ./app

# Create non-root user
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python -c "import requests; requests.get('http://localhost:8000/health')"

# Run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EOF

# ==========================================
# CREATE Query Executor Dockerfile
# ==========================================
cat > services/query-executor/Dockerfile << 'EOF'
FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app ./app

# Create non-root user
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python -c "import requests; requests.get('http://localhost:8000/health')"

# Run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EOF

# ==========================================
# CREATE docker-compose.yml for local development
# ==========================================
cat > docker-compose.yml << 'EOF'
version: '3.8'

services:
  api-gateway:
    build: ./services/api-gateway
    ports:
      - "8000:8000"
    environment:
      - ENVIRONMENT=development
      - MONGODB_URI=${MONGODB_URI}
      - MONGODB_DATABASE=ai_query_generator_dev
      - GOOGLE_API_KEY=${GOOGLE_API_KEY}
      - LLM_PROVIDER=google_gemini
      - VALIDATOR_SERVICE_URL=http://query-validator:8000
      - EXECUTOR_SERVICE_URL=http://query-executor:8000
      - JWT_SECRET_KEY=dev_secret_key_change_in_prod
      - LOG_LEVEL=DEBUG
    depends_on:
      - query-validator
      - query-executor
    volumes:
      - ./services/api-gateway/app:/app/app

  query-validator:
    build: ./services/query-validator
    ports:
      - "8001:8000"
    environment:
      - ENVIRONMENT=development
      - MONGODB_URI=${MONGODB_URI}
      - MONGODB_DATABASE=ai_query_generator_dev
      - LOG_LEVEL=DEBUG
    volumes:
      - ./services/query-validator/app:/app/app

  query-executor:
    build: ./services/query-executor
    ports:
      - "8002:8000"
    environment:
      - ENVIRONMENT=development
      - MONGODB_URI=${MONGODB_URI}
      - MONGODB_DATABASE=ai_query_generator_dev
      - LOG_LEVEL=DEBUG
    volumes:
      - ./services/query-executor/app:/app/app
EOF

# ==========================================
# CREATE Makefile
# ==========================================
cat > Makefile << 'EOF'
.PHONY: help install test lint format docker-build docker-up docker-down clean

help:
	@echo "Available commands:"
	@echo "  install        Install dependencies for all services"
	@echo "  test           Run tests for all services"
	@echo "  lint           Run linting"
	@echo "  format         Format code"
	@echo "  docker-build   Build all Docker images"
	@echo "  docker-up      Start all services with docker-compose"
	@echo "  docker-down    Stop all services"
	@echo "  clean          Clean build artifacts"

install:
	@for service in services/*/; do \
		echo "Installing $$service..."; \
		cd $$service && pip install -r requirements.txt && cd ../..; \
	done

test:
	@for service in services/*/; do \
		echo "Testing $$service..."; \
		cd $$service && pytest && cd ../..; \
	done

lint:
	@for service in services/*/; do \
		echo "Linting $$service..."; \
		cd $$service && flake8 app/ && cd ../..; \
	done

format:
	@for service in services/*/; do \
		echo "Formatting $$service..."; \
		cd $$service && black app/ && cd ../..; \
	done

docker-build:
	docker-compose build

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
EOF

# ==========================================
# CREATE README.md
# ==========================================
cat > README.md << 'EOF'
# AI MongoDB Query Generator - Render.com Edition

Generate MongoDB queries from natural language using LangGraph and LLM.

## Architecture

**Simplified Cloud-Native Architecture:**
- **API Gateway**: FastAPI + LangGraph orchestration
- **Query Validator**: Syntax and security validation
- **Query Executor**: MongoDB Atlas query execution

**Technology Stack:**
- FastAPI (Python 3.11)
- LangGraph (Agentic workflow)
- LangChain (LLM integration)
- Google Gemini / OpenAI GPT
- MongoDB Atlas (cloud.mongodb.com)
- Render.com (Hosting)

## Quick Start

### Prerequisites

1. **MongoDB Atlas Account**
   - Create account at https://cloud.mongodb.com
   - Create a cluster
   - Get connection string
   
2. **Google API Key** (or OpenAI)
   - Get key from https://makersuite.google.com/app/apikey
   
3. **Render.com Account**
   - Sign up at https://render.com

### Local Development

1. **Clone and setup**
```bash
git clone <repository>
cd ai-mongodb-query-generator-render
cp .env.example .env
# Edit .env with your credentials
```

2. **Install dependencies**
```bash
make install
```

3. **Start services**
```bash
make docker-up
```

4. **Test API**
```bash
curl http://localhost:8000/health
```

### Deploy to Render.com

1. **Connect Repository**
   - Go to Render Dashboard
   - New > Blueprint
   - Connect your GitHub repository

2. **Configure Environment Variables**
   - Set MONGODB_URI (from Atlas)
   - Set GOOGLE_API_KEY
   - Other variables auto-generated

3. **Deploy**
   - Render automatically deploys from render.yaml
   - Services available at generated URLs

## API Endpoints

### Generate Query
```bash
POST /api/v1/query/generate
{
  "query": "Find all users registered last week",
  "collection": "users"
}
```

### Health Check
```bash
GET /health
```

## MongoDB Atlas Setup

1. Create cluster at cloud.mongodb.com
2. Create database user
3. Whitelist IP: 0.0.0.0/0 (for Render)
4. Get connection string
5. Add to Render environment variables

## LangGraph Flow
```
User Query
    ↓
[Schema Fetcher Node]
    ↓
[Query Generator Node] ← LLM
    ↓
[Validator Node]
    ↓
[Executor Node] → MongoDB Atlas
    ↓
Results
```

## Documentation

- [API Documentation](docs/api/)
- [Architecture](docs/architecture/)
- [Deployment Guide](docs/deployment/)
- [Development Guide](docs/development/)

## License

MIT
EOF

echo "✅ Render.com project structure created successfully!"
echo ""
echo "Next steps:"
echo "1. cd ai-mongodb-query-generator-render"
echo "2. cp .env.example .env"
echo "3. Edit .env with your MongoDB Atlas and API keys"
echo "4. Set up MongoDB Atlas cluster"
echo "5. Deploy to Render.com using render.yaml"
echo "6. Start development!"

