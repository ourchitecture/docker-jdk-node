ARG IMAGE_TAG="11-jdk"

FROM openjdk:${IMAGE_TAG}

LABEL organization="Ourchitecture"
LABEL license="MIT"
LABEL url="https://github.com/ourchitecture/docker-ibmcloud-cli"

ARG NODE_MAJOR_VERSION="10"

USER root

# Install node 10
RUN set -x \
    && apt-get update \
    && apt-get install -my gnupg curl \
    && curl -sL https://deb.nodesource.com/setup_${NODE_MAJOR_VERSION}.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm@latest \
    && node --version \
    && npm --version
