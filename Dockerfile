FROM ubuntu:latest

RUN apt-get update

# tools
RUN apt-get install -y \
    neofetch \
    zsh \
    curl

# some developers tools
RUN apt-get install -y \
    git \
    valgrind \
    cppcheck \
    check \
    g++ \
    make \
    cmake \
    clang \
    clang-format

# zsh config
RUN curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
RUN echo clear >> ~/.zshrc
RUN echo neofetch >> ~/.zshrc
RUN echo "alias sh='bash'" >> ~/.zshrc

WORKDIR /project