# .devcontainer/Dockerfile

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    git curl wget unzip zip sudo gnupg2 \
    build-essential make cmake gcc g++ zsh jq htop tree \
    net-tools file python3 python3-pip python3-venv \
    nodejs npm golang-go openjdk-21-jdk default-jdk \
    nginx mariadb-server redis-server postgresql \
    neovim tmux ufw nmap netcat-traditional \
    openssh-client fail2ban lynis whois dnsutils \
    docker.io docker-compose \
    && apt-get clean

# Python libs
RUN pip3 install --upgrade pip && \
    pip3 install numpy pandas matplotlib scikit-learn \
    jupyter seaborn opencv-python transformers torch torchvision

# ZSH + dummy config
RUN mkdir -p /root/.config/nvim /root/.config/tmux && \
    echo 'set number' > /root/.config/nvim/init.vim && \
    echo 'alias ll="ls -la"' > /root/.zshrc && \
    echo '# tmux config' > /root/.config/tmux/tmux.conf

CMD [ "bash" ]
