FROM python:3.9

# change the working directory
WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD app/ .
