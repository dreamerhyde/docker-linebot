FROM python:3.11-slim


WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt-get update && \
    apt-get install -y tk && \
    pip install --no-cache-dir --upgrade -r /code/requirements.txt && \
    playwright install --with-deps chromium
