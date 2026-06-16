# Use python alpine base image
FROM python:3.11-alpine3.17
 
# Set working directory
WORKDIR /app
 
# Copy source code to container
COPY . /app
 
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Expose port 80
EXPOSE 80
 
# Start the app using gunicorn
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80"]