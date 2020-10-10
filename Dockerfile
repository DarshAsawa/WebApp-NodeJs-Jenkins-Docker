From node

ADD . /
WORKDIR /

RUN npm install
RUN npm build
