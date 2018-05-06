FROM jenkins/jenkins:lts

LABEL maintener="gallegoj@gmail.com"

USER root

# Set the locale (needed by Mongo)
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
  && dpkg-reconfigure --frontend=noninteractive locales \
  && update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get update && apt-get install -y curl g++ build-essential npm xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 \
  && curl https://install.meteor.com/ | sh \
  && mkdir -p /home/node/.npm-global \
  && chown -R jenkins /home/node/.npm-global \
  && apt-get clean && rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Needed for npm -g commands
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# drop back to the regular jenkins user - good practice
USER jenkins

# Install Cypress for acceptance tests
RUN npm install cypress -g
