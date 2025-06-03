FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl wget git zsh unzip zip htop tree sudo tzdata \
        build-essential cmake gcc g++ make \
        python3 python3-pip python3-venv \
        neovim \
        nodejs npm \
        nginx mariadb-server postgresql \
        ufw fail2ban nmap \
        ca-certificates gnupg \
        docker.io docker-compose && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --break-system-packages \
    numpy pandas matplotlib scikit-learn jupyter seaborn opencv-python

CMD [ "bash" ]
