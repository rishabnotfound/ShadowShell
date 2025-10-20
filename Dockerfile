# ShadowShell - Custom ShellInABox environment
FROM shellinabox/shellinabox

# Install additional tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    nano \
    vim \
    htop \
    python3 \
    net-tools \
    iputils-ping \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Optional: change default login shell to /bin/bash
RUN chsh -s /bin/bash

# Expose the default web terminal port
EXPOSE 4200

# Run ShellInABox
CMD ["/usr/bin/shellinaboxd", "--no-beep", "--disable-ssl", "--port=4200", "--user-css", "White On Black"]
