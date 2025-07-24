FROM python:3.10-slim

# Install system dependencies
RUN apt update && apt install -y ffmpeg git curl python3-pip

# Upgrade pip properly
RUN python3 -m pip install --upgrade pip setuptools

# Copy project
COPY . /app
WORKDIR /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Run the bot
CMD ["python3", "-m", "callsmusic"]
