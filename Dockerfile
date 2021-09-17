FROM python:3
RUN mkdir /build
RUN echo Hello Docker Yra >/build/hi.txt
RUN python --version