#official Python runtime as parent image
FROM python:3.8-slim

# working directory inside the container
WORKDIR /app

# Copy the current directory that will content into the container at /app
COPY . /app

# Run hello.py when we launch the container
CMD ["python", "hello.py"]