#!/usr/bin/env bash
echo "priority_networks = $PRIORITY_NETWORKS" >> /opt/doris/fe/conf/fe.conf
echo "bdbje_lock_timeout_second = 5" >> /opt/doris/fe/conf/fe.conf
if test -z "$MASTER_URL"
then
  echo 'start master instance'
  sh /opt/doris/fe/bin/start_fe.sh
else  
  echo 'start FOLLOWER/OBSERVER instance with master ${MASTER_URL}'
  sh /opt/doris/fe/bin/start_fe.sh --helper $MASTER_URL
fi
