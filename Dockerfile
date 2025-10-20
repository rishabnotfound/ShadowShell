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

# Expose default ShellInABox port
EXPOSE 4200

# Launch ShellInABox on port 4200 without SSL
CMD ["/usr/bin/shellinaboxd", "--no-beep", "--disable-ssl", "--port=4200", "--user-css", "White On Black"]
