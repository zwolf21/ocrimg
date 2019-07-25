FROM python

RUN apt-get update
RUN apt-get install -y tesseract-ocr
RUN apt-get install -y tesseract-ocr-kor

RUN mkdir /code

WORKDIR /code
ADD requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD ./src src

WORKDIR /code/src