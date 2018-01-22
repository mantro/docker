FROM postgres:9.6.6

RUN apt-get update; \
    apt-get install curl -y; \
    curl -sL https://deb.nodesource.com/setup_8.x | bash -; \
    apt-get install nodejs; \
    rm -rf /var/lib/apt/lists/*;
