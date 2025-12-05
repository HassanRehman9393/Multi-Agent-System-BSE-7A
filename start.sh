#!/bin/bash
# Startup script for Digital Ocean deployment

# Set Python path to workspace root
export PYTHONPATH=/workspace:$PYTHONPATH

# Start the FastAPI application
exec uvicorn agents.lecture_insight.app:app --host 0.0.0.0 --port ${PORT:-8080}
