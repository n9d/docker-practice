FROM docker:latest
RUN apk add bash bash-completion
RUN docker completion bash > /etc/bash/bash_docker_completion.sh
RUN echo '. /etc/bash/bash_completion.sh' >> ~/.bashrc
RUN echo '. /etc/bash/bash_docker_completion.sh' >> ~/.bashrc
RUN mkdir /src
WORKDIR /src

