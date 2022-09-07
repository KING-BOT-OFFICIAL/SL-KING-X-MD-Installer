FROM node:latest

RUN git clone https://github.com/KING-BOT-OFFICIAL/SL-KING-X-CODE-REPO /root/slkingx
WORKDIR /root/slkingx/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
