FROM python:3
RUN python -m pip install Django
RUN django-admin startproject mysite
WORKDIR /mysite
COPY settings.py mysite/
CMD python manage.py runserver 0:8000
EXPOSE 8000


