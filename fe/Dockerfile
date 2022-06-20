FROM mooncakexyb/doris_base:1.0.0

VOLUME /opt/doris/fe/doris-meta
EXPOSE 8030 9010 9020 9030
ENV MASTER_URL=
ENV TZ=Asia/Shanghai
ENV PRIORITY_NETWORKS=10.108.0.0/16
COPY entrypoint.sh /opt/doris/fe/bin/entrypoint.sh
WORKDIR /opt/doris/fe
ENTRYPOINT /opt/doris/fe/bin/entrypoint.sh
