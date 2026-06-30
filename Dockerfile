FROM python:3.10
WORKDIR /app

RUN apt-get update && apt-get install -y \
    ffmpeg \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

COPY . .
RUN pip install -r requirements.txt

CMD ["python", "main.py"]
