# arch image with base-devel
FROM base/devel

# create user and set sudo priv
RUN echo 'archuser ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && \
  useradd -m archuser -s /bin/bash

# switch user and workdir
USER archuser
WORKDIR /home/archuser

# add files of the current branch
ADD aurman/aurman.sh /home/archuser/aurman.sh

ENV LC_ALL="en_US.UTF-8"
# aurman requirements and sysupgrade
RUN sudo pacman --noconfirm -Sy git && \
  gpg --keyserver https://github.com/polygamma.gpg --receive-keys 465022E743D71E39 && \
  git clone https://aur.archlinux.org/aurman.git && \
  cd aurman && \
  makepkg -si --noconfirm && \
  cd .. && \
  rm -rf aurman aurman.sh

ADD . /home/archuser/arch-notes

WORKDIR /home/archuser/arch-notes

ENTRYPOINT ["/bin/bash"]
