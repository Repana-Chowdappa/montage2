FROM websphere-liberty:webProfile7
ADD target/montage.war /config/dropins/
RUN mkdir -p /opt/ibm/wlp/output/defaultServer/workarea
RUN chmod 777 /opt/ibm/wlp/output/defaultServer/workarea

EXPOSE 9443

ENV LICENSE accept
