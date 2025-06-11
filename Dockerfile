# Use the official Python image from Docker Hub
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and app code into the container
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Command to run your Flask app
CMD ["python", "app.py"]
