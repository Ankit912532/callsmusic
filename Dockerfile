FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "main.py"]
