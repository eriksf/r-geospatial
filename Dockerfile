FROM rocker/geospatial:4.4.2

# install sdm and usdm
RUN install2.r --error --skipmissing --skipinstalled sdm usdm

CMD [ "R" ]
