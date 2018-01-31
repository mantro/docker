FROM circleci/openjdk:8-jdk

RUN sudo apt-get update
RUN sudo apt-get install -qq -y python-pip libpython-dev
RUN sudo pip install --upgrade pip
RUN sudo pip install awscli --upgrade

# setup kubectl
RUN sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.6/bin/linux/amd64/kubectl
RUN sudo chmod +x ./kubectl
RUN sudo mv ./kubectl /usr/local/bin/kubectl

# setup yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get install -y apt-transport-https
RUN sudo apt-get update && sudo apt-get install -y yarn
