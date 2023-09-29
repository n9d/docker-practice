FROM docker:latest
RUN apk add bash bash-completion curl
RUN docker completion bash > /etc/bash/bash_docker_completion.sh
RUN echo 'set -o emacs' >> ~/.bashrc
RUN echo 'PS1="\[\033[01;32m\]dind\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "' >> ~/.bashrc
RUN echo '. /etc/bash/bash_completion.sh' >> ~/.bashrc
RUN echo '. /etc/bash/bash_docker_completion.sh' >> ~/.bashrc
RUN mkdir /src
WORKDIR /src

