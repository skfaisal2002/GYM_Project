FROM python:3.9-slim-buster
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir --upgrade pip
RUN pip install django

EXPOSE 8000
COPY . /app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
