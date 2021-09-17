FROM python:3
RUN mkdir /build
RUN echo Hello S3 Yra 456 >/build/hi.txt
WORKDIR /usr/src/app/test
RUN mv /build ./build
RUN python --version