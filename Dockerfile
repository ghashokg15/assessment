FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requrements.txt

COPY app ./app

COPY tests ./tests

CMD ["python", "app/main.py"]