FROM python:3
RUN mkdir /build
RUN echo Shud >/build/shud.txt
WORKDIR /usr/src/app/test
RUN mv /build ./build
RUN python --version