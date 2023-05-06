FROM python:3.10-slim

WORKDIR /code
COPY requirements1.txt .
RUN pip install -r requirements1.txt
COPY app.py .
COPY migrations migrations
COPY docker_config.py default_config.py

CMD flask run -h 0.0.0.0 -p 80