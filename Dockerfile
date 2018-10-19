FROM debian:buster-slim

LABEL maintainer="tommy@thetsui.com"

LABEL version="1"


# Expected persistent data is stored in /solid
ENV uid solid

USER root

# Install node as instructed
RUN apt-get update ; apt-get install -y curl sudo gnupg2; curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - ; apt-get install -y nodejs build-essential


# Install solid-server
RUN npm install -g solid-server

# Create the solid UID and GID
RUN adduser --system --ingroup www-data --no-create-home $uid 

# EXPOSE port for Solid
EXPOSE 8443

# Run Solid as ${uid}
USER ${uid}
WORKDIR /solid

CMD solid start
