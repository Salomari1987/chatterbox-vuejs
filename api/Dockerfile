FROM python:3.6

WORKDIR /app/api

COPY requirements.txt /app/api
RUN pip3 install --upgrade pip -r requirements.txt

COPY . /app/api

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000
