# Use base image with Python 3.10 + Node.js 19
FROM nikolaik/python-nodejs:python3.10-nodejs19

# Install git + ffmpeg and clean up cache to keep image size small
RUN sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list && \
    sed -i '/security.debian.org/d' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends git ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -U -r requirements.txt

# Start the bot
CMD ["bash", "start"]
