# ShadowShell - working base using sagemathinc/cocalc-shellinabox
FROM sagemathinc/cocalc-shellinabox:latest

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

EXPOSE 4200

CMD ["/usr/bin/shellinaboxd", "--no-beep", "--disable-ssl", "--port=4200", "--user-css", "White On Black"]
