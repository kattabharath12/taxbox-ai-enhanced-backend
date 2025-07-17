FROM python:3.11-slim

WORKDIR /app

# Copy requirements from backend directory
COPY backend/requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application code from backend directory
COPY backend/ .

# Run the application
CMD uvicorn main:app --host 0.0.0.0 --port $PORT
