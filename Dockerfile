FROM node:alpine

RUN apk update && apk upgrade
RUN apk add --no-cache bash git openssh
# Compass
RUN apk add --update build-base libffi-dev ruby ruby-dev ca-certificates
RUN gem install sass compass --no-ri --no-rdoc
RUN apk del build-base libffi-dev ruby-dev && rm -rf /var/cache/apk/*#
