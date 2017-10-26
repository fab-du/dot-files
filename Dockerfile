# Dotfiles test environment
FROM ubuntu:16.04

LABEL Description="Run dotfiles"
# Initialize
RUN apt-get update
RUN apt-get install -y zsh vim git curl tmux python3
RUN apt-get install -y language-pack-en-base language-pack-en
RUN locale-gen de_DE.UTF-8
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:de
ENV LC_ALL de_DE.UTF-8

# Add normal user
RUN useradd -ms /bin/bash ubuntu
USER ubuntu
WORKDIR /home/ubuntu
