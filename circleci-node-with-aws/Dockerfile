FROM circleci/node:10.16.3
RUN sudo apt-get update && sudo apt-get install -qq -y python-pip libpython-dev rsync
RUN sudo pip install --upgrade pip
RUN sudo pip install awscli --upgrade
RUN sudo pip install awscli-local 