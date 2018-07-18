rsync:
  server:
    enabled: true
    bind:
      address: 0.0.0.0
    module:
      name:
        max_connections: 2
        path: /srv/rsync
        read_only: False
    timeout: 300
sensu:
  server:
    enabled: true
  client:
    enabled: true
    message_queue:
      engine: rabbitmq
      host: rabbitmq
      port: 5672