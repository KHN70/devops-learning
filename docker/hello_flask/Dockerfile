# Stage 1: Build stage
FROM python:3.8-slim AS Build

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config

COPY . .

RUN pip install --default-timeout=100 --no-cache-dir flask mysqlclient

# Stage 2: Production Stage
FROM python:3.8-slim

WORKDIR /app

# Copy the installed Python packages from the build stage
COPY --from=Build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

# Copy your application code from the build stage
COPY --from=Build /app /app

EXPOSE 5002

CMD [ "python", "app.py" ]