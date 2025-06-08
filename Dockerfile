FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    lsb-release \
    docker.io \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production

EXPOSE 5000
CMD ["flask", "run"]
