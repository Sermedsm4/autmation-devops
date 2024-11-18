FROM python:3.11-alpine

RUN mkdir -p /opt/weather_app
WORKDIR /opt/weather_app
COPY . .

RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]