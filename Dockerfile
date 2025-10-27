# Use the official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Tell Docker which port the app will listen on
EXPOSE 8080

# Define environment variable for Flask
ENV FLASK_APP=app.py

# Default command
CMD ["python", "app.py"]
