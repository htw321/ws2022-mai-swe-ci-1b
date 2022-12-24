FROM python:3.8
COPY src /app
# TODO copy requirements file and install them
WORKDIR /app
CMD ["exec gunicorn -b :80 --access-logfile /dev/stdout main:app"]
