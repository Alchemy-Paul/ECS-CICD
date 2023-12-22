# Use a base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . . 

# Install dependencies
RUN pip install flask

# Install dependencies from a list
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 80

# Start the application
CMD ["flask", "run","--host","0.0.0.0","port","80"]