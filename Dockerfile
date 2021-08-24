# syntax=docker/dockerfile:1
FROM python:3
WORKDIR /usr/src/app
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt
COPY . /usr/src/app
EXPOSE 8000
CMD ["python", "app_python/manage.py", "runserver", "0.0.0.0:8000"]