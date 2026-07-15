# Create a new directory named mytest
mkdir mytest

# Navigate to mytest directory
cd mytest

# Add a simple Python script to demonstrate multi-stage build and security best practices
cat <<EOF > mytest/Dockerfile
FROM python:3.8-slim

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "mytest/app.py"]
EOF
