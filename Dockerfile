FROM openjdk:11-jdk

LABEL organization="Ourchitecture"
LABEL license="MIT"
LABEL url="https://github.com/ourchitecture/docker-ibmcloud-cli"

USER root

# Install node 10
RUN set -x \
    && apt-get update \
    && apt-get install -my gnupg curl \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm@latest \
    && node --version \
    && npm --version

CMD ['java']
