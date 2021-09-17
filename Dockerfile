FROM python:3
RUN apt-get update
RUN apt-get install -y curl awscli jq

RUN curl -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/aws-iam-authenticator
RUN chmod +x /usr/local/bin/aws-iam-authenticator
RUN aws-iam-authenticator help

RUN aws configure set aws_access_key_id awsaccess_key
RUN aws configure set aws_secret_access_key awssecret_key
RUN aws configure set default.region awsregion

RUN echo hi >hi.txt
RUN python --version