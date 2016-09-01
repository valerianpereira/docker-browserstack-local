FROM debian

RUN apt-get update; apt-get install -y wget unzip
RUN wget https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip \
    && unzip BrowserStackLocal-linux-x64.zip \
    && chmod +x BrowserStackLocal \
    && rm BrowserStackLocal-linux-x64.zip

CMD /BrowserStackLocal ${ARGS:--v} ${KEY}