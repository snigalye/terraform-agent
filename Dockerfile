FROM alpine:3.16.2
ARG TERRAFORM_VERSION=1.3.1
ARG TF_SUMMARIZE_VERSION=0.2.3

RUN apk add --no-cache wget unzip
RUN wget -O terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  mv terraform /usr/local/bin && \
  wget -O tf-summarize_linux_amd64.zip https://github.com/dineshba/tf-summarize/releases/download/v${TF_SUMMARIZE_VERSION}/tf-summarize_linux_amd64.zip && \
  unzip tf-summarize_linux_amd64.zip && \
  mv tf-summarize /usr/local/bin && \
  rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip tf-summarize_linux_amd64.zip
