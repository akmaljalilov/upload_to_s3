FROM python:3
RUN mkdir /build
RUN echo Hello S3 Yra 456 >/build/hi.txt
RUN python --version