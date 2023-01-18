FROM debian:buster-slim

RUN dpkg --add-architecture i386 && \
    sed -i 's/deb /deb [arch=amd64,i386] /g' /etc/apt/sources.list && \
    apt-get update && apt-get install -yq wget unzip libcap2-bin lib32z1 libasound2:i386 libasound2-dev:i386 socat && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

RUN mkdir /opt/linbpq
WORKDIR /opt/linbpq


RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_amd64.deb
RUN dpkg -i dumb-init_*.deb

# Add the linbpq file
ADD https://www.cantab.net/users/john.wiseman/Downloads/linbpq /opt/linbpq
RUN chmod +x /opt/linbpq

# Add the HTML pages
RUN mkdir /opt/linbpq/HTML
RUN cd HTML; wget http://www.cantab.net/users/john.wiseman/Downloads/Beta/HTMLPages.zip; unzip HTMLPages.zip; rm HTMLPages.zip

# Add BPQAPR Pages
RUN mkdir /opt/linbpq/BPQAPRS
RUN cd BPQAPRS; wget http://www.cantab.net/users/john.wiseman/Documents/Samples/APRSHTML.zip; unzip APRSHTML.zip; rm APRSHTML.zip

# allrf parsing has a buffer size bug. We're overloading the one that comes from John
ADD overwrite/allrf.html /opt/linbpq/BPQAPRS/HTML/allrf.html

RUN chmod +x linbpq

ADD start.sh /opt/linbpq/
ADD socat.sh /opt/linbpq/

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/opt/linbpq/start.sh"]
