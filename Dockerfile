FROM python:3
RUN mkdir /build
RUN echo Hello Docker Yra 123 >/build/hi.txt
RUN python --version