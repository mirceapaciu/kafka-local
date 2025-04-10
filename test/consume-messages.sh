#!/bin/bash
# This script consumes messages from the Kafka topic 'test-topic'.
echo "Consuming messages from the topic 'test-topic'. Press Ctrl+C to exit."
docker exec -it kafka /opt/kafka/bin/kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic \
  --from-beginning
