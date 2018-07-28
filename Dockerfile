# arch image with base-devel
FROM base/devel

# create user and set sudo priv
RUN useradd --shell /bin/bash --create-home archuser 
RUN echo 'archuser ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# switch user and workdir
USER archuser
WORKDIR /home/archuser

# aurman requirements and sysupgrade
RUN sudo pacman --noconfirm -Sy git

# add files of the current branch
ADD . /home/archuser/archuser-notes

WORKDIR /home/archuser/archuser-notes

ENTRYPOINT ["/bin/bash"]
