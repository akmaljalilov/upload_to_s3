FROM python:3
RUN mkdir build
RUN echo hi >build/hi.txt
RUN python --version