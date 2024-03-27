Python Exercise:

Step 1: created a directory named python test.
Created hello.py file as per the requirement.
 
Used the below content in hello.py file
```angular2html
print("Hello, this is a test to my Python and docker knowledge")
``` 

Step 2: we have to create a docker file. 
```angular2html
#official Python runtime as parent image
FROM python:3.8-slim

# working directory inside the container
WORKDIR /app

# Copy the current directory that will content into the container at /app
COPY . /app

# Run hello.py when we launch the container
CMD ["python", "hello.py"]
``` 
The above mentioned is the code in docker file. 

Step 3: Build the Docker image
Open a terminal or command prompt.
Navigate to the folder where you have your hello.py file and Dockerfile.
```
Run this command: docker build -t my_python_app .
```
This command tells Docker to create an image based on the instructions in your Dockerfile.
It gives the image a name or "tag" called my_python_app.
 

Step 4: Run the Docker container
After the image is built, you can run a container using the following command:
```
Run: docker run my_python_app
```
This command instructs Docker to start a container based on the my_python_app image.
Because the Dockerfile specifies to run hello.py, you'll see the message "Hello, this is a test to my Python and docker knowledge" printed in the terminal.
 
We can see the requirement in the terminal.

