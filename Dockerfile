FROM carmel/polytechic:latest

RUN git clone https://github.com/decode-stack/carmelpolystorage /root/endistorage
WORKDIR /root/endistorage/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
