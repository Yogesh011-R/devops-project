FROM python:3.12-slim-bookworm AS base

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

ENV OTEL_SERVICE_NAME="recommendation"
ENV PRODUCT_CATALOG_ADDR="3001"
ENTRYPOINT ["python","recommendation_server.py"]
