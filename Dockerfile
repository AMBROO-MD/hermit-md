FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/AMBROO-MD/hermit-md /root/hermit-md
WORKDIR /root/hermit-md/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
