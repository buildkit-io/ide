FROM whogloo/nodespeed-ide
USER root
RUN mkdir /root/tmp
EXPOSE 6800 3000
VOLUME ["/projects"]
WORKDIR /var/brackets-server
CMD ["node", "nodespeedide", "--supp-dir", "/projects/.brackets-server", "-j", "/projects"]
