FROM circleci/openjdk:8-jdk-node-browsers
RUN sudo apt-get update && sudo apt-get install -qq -y python-pip libpython-dev mysql-client

# Instal aws-cli
RUN sudo pip install --upgrade pip
RUN sudo pip install awscli --upgrade