FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Makassar
ENV NVM_DIR=/root/.nvm

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget git zsh unzip zip htop tree sudo tzdata gnupg lsb-release \
    build-essential cmake gcc g++ make neovim \
    python3 python3-pip python3-venv python3-full \
    nodejs npm openjdk-21-jdk golang-go ruby-full \
    nginx mariadb-server postgresql \
    ufw fail2ban nmap lynis whois supervisor \
    ca-certificates pipx && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# 📦 pipx & poetry
RUN pipx ensurepath && pipx install poetry

# 📦 nvm & PM2
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \
    bash -c ". \"$NVM_DIR/nvm.sh\" && nvm install --lts && nvm use --lts && npm i -g pm2"

# 🤖 Python AI/ML
RUN pip3 install --break-system-packages \
    numpy pandas matplotlib scikit-learn jupyter seaborn opencv-python \
    transformers torch torchvision

# 🧾 Dotfiles & aliases
RUN echo "alias ll='ls -la'" >> /root/.zshrc && \
    echo "set -g mouse on" > /root/.tmux.conf && \
    mkdir -p /root/.config/nvim && echo "set number" > /root/.config/nvim/init.vim

# 👤 User devuser
RUN useradd -m -s /bin/bash devuser && \
    echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# (Opsional) SSH config
RUN mkdir -p /home/devuser/.ssh && chown -R devuser:devuser /home/devuser/.ssh

# Root password (buat proot atau termux if needed)
RUN echo "root:toor" | chpasswd

WORKDIR /root
CMD ["/bin/bash"]
