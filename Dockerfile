FROM python:3
RUN apt-get update
RUN apt-get install -y curl awscli jq

RUN aws configure set aws_access_key_id awsaccess_key
RUN aws configure set aws_secret_access_key awssecret_key
RUN aws configure set default.region awsregion

RUN echo hi >hi.txt
RUN python --version