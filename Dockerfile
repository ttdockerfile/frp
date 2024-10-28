FROM alpine
CMD ["/bin/sh"]
ENV VERSION=0.61.0
RUN /bin/sh -c wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_amd64.tar.gz && tar -zxvf frp_${VERSION}_linux_amd64.tar.gz -C /opt/ && ln -s /opt/frp_${VERSION}_linux_amd64/ /opt/frp
WORKDIR /opt/frp/