FROM phraktal/hardbox-base:latest

RUN yarn global add hardbox-session hardbox-passport hardbox-proxy hardbox-passport-local redis-mock

CMD node ~/.config/yarn/global/node_modules/hardbox/hardbox-start /etc/hardbox/main.js