# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Copy your app code into the container
COPY . .

# Expose port 80
EXPOSE 80

# Run the Flask app using Python (basic dev server)
CMD ["python", "app.py"]
