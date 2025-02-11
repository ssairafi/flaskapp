# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
# COPY requirements.txt .

# Install the required dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

RUN pip install flask

# Expose the port the app runs on
EXPOSE 9090

# Define the command to run the application
CMD ["python", "app.py"]