java_home: /usr/lib/java
kafka:
    config:
        heap_initial_size: 1G
        heap_max_size: 1G
        chroot_path: kafka/team_cluster
        restart_on_config_change: True
        properties:
            delete.topic.enable: 'true'