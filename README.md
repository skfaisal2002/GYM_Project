to run my project python manange.py runserver

 GYM_Project

adding one line of code to trigger jenkin as well



FROM python:3.7-alpine
WORKDIR
Learn more about the "WORKDIR" Dockerfile command.
 /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
