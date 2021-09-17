FROM python:3
RUN mkdir /build
RUN echo Hello Docker Yra 456 >/build/yra.txt
RUN python --version