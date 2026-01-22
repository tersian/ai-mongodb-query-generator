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
