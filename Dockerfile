FROM python:3.8
COPY src /app
WORKDIR /app
CMD ["exec gunicorn -b :80 --access-logfile /dev/stdout main:app"]
