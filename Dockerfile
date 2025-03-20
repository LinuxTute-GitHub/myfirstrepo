FROM ubuntu:latest


WORKDIR /app

COPY app.py .

RUN apt-get update
RUN apt-get install python3 python3-pip -y

CMD ["python3", "app.py"]
