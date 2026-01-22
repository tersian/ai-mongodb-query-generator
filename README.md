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
