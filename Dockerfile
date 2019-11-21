FROM archlinux:latest

RUN pacman -Sy gawk --noconfirm
RUN rm -fr /etc/pacman.d/gnupg
RUN pacman-key --init
RUN pacman-key --populate archlinux

RUN pacman -Syu --noconfirm
RUN pacman -S nodejs yarn --noconfirm

RUN useradd -m hardbox
USER hardbox

RUN yarn global add hardbox hardbox-cli hardbox-session hardbox-passport hardbox-proxy hardbox-passport-local redis-mock

CMD node ~/.config/yarn/global/node_modules/hardbox/hardbox-start /etc/hardbox/main.js