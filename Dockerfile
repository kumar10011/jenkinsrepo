# Stage 1: Builder
FROM python:3.12-slim as builder

WORKDIR /app

# Copy only requirements to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Copy the application code
COPY . .

# Default command
CMD ["python", "app.py"]
