FROM ubuntu:latest

MAINTAINER Junho Yoon

RUN apt-get update \
    && apt-get install -y \
    yarn 
    
    
RUN yarn add chat-bubble \
    && yarn init \
    && yarn add webpack \
    webpack-dev-server \
    babel-core \
    babel-loader \
    babel-preset-es2015 --save-dev

RUN MKDIR chatbot

COPY . /chat-bubble

WORKDIR /chat-bubble
PORT 3000


RUN yarn webpack-dev-server
