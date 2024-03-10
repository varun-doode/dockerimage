FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_linux_amd64.zip \
    && unzip terraform_1.7.4_linux_amd64.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform_1.7.4_linux_amd64.zip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && pip3 install --upgrade pip \
    && pip3 install awscli

WORKDIR /dir
