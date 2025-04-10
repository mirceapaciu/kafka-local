#!/bin/bash
echo "Enter message strings to send to the topic 'test-topic'. Press Ctrl+D to finish."
docker exec -it kafka /opt/kafka/bin/kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic
