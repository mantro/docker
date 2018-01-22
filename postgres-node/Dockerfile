FROM postgres:9.6.6

RUN apt-get update; \
    apt-get install curl apt-transport-https -y; \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; \
    curl -sL https://deb.nodesource.com/setup_8.x | bash -; \
    apt-get install nodejs yarn -y; \
    rm -rf /var/lib/apt/lists/*;