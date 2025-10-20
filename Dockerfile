# ShadowShell - Fedora-based shellinabox
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

# Set a custom root password (replace 'ShadowPass123' with your own)
RUN echo "root:rishab" | chpasswd

# Expose port
EXPOSE 4200
