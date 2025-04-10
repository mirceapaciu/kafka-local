#!/bin/bash

CONFIG="/etc/kafka/docker/server.properties"
DATA_DIR="/var/lib/kafka/data"
META_FILE="$DATA_DIR/meta.properties"

if [ ! -f "$META_FILE" ]; then
  echo "$(date) Initializing KRaft storage..."
  CLUSTER_ID=$(/opt/kafka/bin/kafka-storage.sh random-uuid)
  echo "$(date) Generated Cluster ID: $CLUSTER_ID"
  /opt/kafka/bin/kafka-storage.sh format -t $CLUSTER_ID -c $CONFIG
fi

exec /opt/kafka/bin/kafka-server-start.sh $CONFIG
