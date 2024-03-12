FROM ubuntu:latest

RUN apt-get update

# tools
RUN apt-get install -y \
    neofetch \
    zsh \
    curl \
    vim

# some developers tools
RUN apt-get install -y \
    g++ \
    git \
    make \
    cmake \
    clang \
    valgrind \
    cppcheck \
    clang-format

# libraries
RUN apt-get install -y \
    check \
    libgtest-dev \
    libncurses-dev

# zsh config
RUN curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
RUN echo clear >> ~/.zshrc
RUN echo neofetch >> ~/.zshrc
RUN echo "alias sh='bash'" >> ~/.zshrc

WORKDIR /project
