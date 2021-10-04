kafka-config-file-env:
   environ.setenv:
     - name: KAFKA_CONFIG
     - value: /etc/kafka
     - update_minion: True