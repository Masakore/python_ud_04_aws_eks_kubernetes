FROM python:stretch

COPY . /app
# COPY requirements.txt /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
