# Use an official python runtimeas a parent image 
FROM python:3.9-slim

# Set the working directory in the contact into the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed package specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container 
EXPOSE 8080

# Define envoronment variable
ENV NAME world

# Run app.py when the container launches
CMD ["python", "app.py"]