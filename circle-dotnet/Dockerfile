FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-bionic

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get update

RUN add-apt-repository ppa:rmescandon/yq \
    && apt-get update \
    && apt install yq -y \
    && apt install gawk -y
