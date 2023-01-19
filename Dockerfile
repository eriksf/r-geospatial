FROM rocker/geospatial:4.2.2

# install rwc
RUN install2.r --error --skipmissing --skipinstalled rwc

CMD [ "R" ]
