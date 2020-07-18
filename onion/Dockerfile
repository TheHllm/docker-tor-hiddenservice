FROM alpine

RUN apk add tor && mkdir -p /opt/tor/hs /.tor && chown 1000:1000 -R /opt/tor /opt/tor/hs /.tor 
USER 1000:1000
VOLUME /opt/tor/hs
WORKDIR /opt/tor
COPY entrypoint.sh entrypoint.sh
COPY torsocks.conf torsocks.conf
ENTRYPOINT ["ash", "entrypoint.sh"]