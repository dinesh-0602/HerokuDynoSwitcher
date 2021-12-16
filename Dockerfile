# This Dockerfile fixes Railway deployment
# Heroku deployment doesn't use this
# Thanks to https://t.me/aishiktokdar

FROM python:3.9-slim

RUN mkdir app \
    && chmod 777 app
COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "script.py"]
