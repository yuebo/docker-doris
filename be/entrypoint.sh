#!/usr/bin/env bash
echo "priority_networks = $PRIORITY_NETWORKS" >> /opt/doris/be/conf/be.conf
echo 'start be instance'
sh /opt/doris/be/bin/start_be.sh
