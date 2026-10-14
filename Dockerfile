FROM python:3.15.0-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

USER 10000:10000

EXPOSE 8080

CMD ["python", "app.py"]
