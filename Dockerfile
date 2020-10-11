From node

ADD . /
WORKDIR /

RUN npm --version
RUN npm build
