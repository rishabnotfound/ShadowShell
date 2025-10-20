# ShadowShell - Based on sspreitzer/shellinabox (Fedora)
FROM sspreitzer/shellinabox:fedora

# Install extra tools
RUN dnf -y install \
    git \
    curl \
    wget \
    nano \
    vim \
    htop \
    python3 \
    iputils \
    net-tools \
    && dnf clean all

# Do NOT override the entrypoint or CMD — the base image handles shellinabox startup

EXPOSE 4200
