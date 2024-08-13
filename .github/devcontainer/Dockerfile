FROM buildpack-deps:noble-curl

LABEL dev.containers.features="common"

ARG TARGETOS
ARG TARGETARCH

RUN apt-get update 
RUN apt-get -y install --no-install-recommends \
        jq \
        yq \
        xdg-utils \
        unzip \
        python3 \
        python3-pip 

# Install jupyter 
RUN pip3 install notebook --break-system-packages

# Install databricks CLI
RUN curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
RUN databricks -v

