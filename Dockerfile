FROM rocker/geospatial:4.4.2

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/local/lib/R/lib:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server:$LD_LIBRARY_PATH

# install sdm, usdm, rJava, and dismo
RUN install2.r --error --skipmissing --skipinstalled sdm usdm rJava dismo


CMD [ "R" ]
