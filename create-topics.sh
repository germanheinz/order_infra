kafka-topics --zookeeper $1:2181 --topic payment-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic stock-approval-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic stock-approval-response --delete --if-exists

kafka-topics --zookeeper $1:2181 --topic payment-request --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic stock-approval-request --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic stock-approval-response --create --partitions 3 --replication-factor 1 --if-not-exists