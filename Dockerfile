# Dockerfile for manage.py

# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# Note: Assuming there is a requirements.txt file in the root directory
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable for Django's settings module
ENV DJANGO_SETTINGS_MODULE=innohacksML.settings

# Run manage.py when the container launches
CMD ["python", "manage.py"]