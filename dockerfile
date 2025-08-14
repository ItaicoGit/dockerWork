FROM python:3.9-slim


WORKDIR /app


COPY . /app

ENV NAME=world
ENV FLASK_APP=flaskr
ENV FLASK_RUN_HOST=0.0.0.0

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["flask", "run"]

