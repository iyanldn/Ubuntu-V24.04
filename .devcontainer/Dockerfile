FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y sudo git curl wget unzip zip neovim tmux \
    build-essential make cmake gcc g++ zsh jq htop tree net-tools \
    file gnupg ufw nmap netcat-traditional openssh-client fail2ban \
    lynis whois dnsutils python3-pip nodejs npm golang-go openjdk-21-jdk \
    nginx mariadb-server redis-server postgresql && \
    apt-get clean

RUN pip3 install --no-cache-dir --upgrade pip && \
    pip3 install numpy pandas matplotlib scikit-learn \
    jupyter seaborn opencv-python \
    transformers torch torchvision
