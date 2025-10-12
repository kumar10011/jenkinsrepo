FROM python:3.12-slim

# Upgrade pip first (optional but recommended)

# Install Flask (latest version)
RUN pip install --no-cache-dir flask

WORKDIR /app

# Copy your application code
COPY . .
EXPOSE 3000
# Expose port 3000 (matching your Flask app)

# Run the app
CMD ["python", "app.py"]
