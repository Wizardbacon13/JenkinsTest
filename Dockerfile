# Use an official Python image as a base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy HelloWorld.py from the host to the container
COPY HelloWorld.py /app/HelloWorld.py

# Expose port 2376 (if needed for external access)
EXPOSE 2376

# Define the command to run the script
CMD ["python", "HelloWorld.py"]
