murano:
  server:
    enabled: true
    version: liberty
    insecure: false
    database:
      engine: mysql
      host: 10.10.20.20
      port: 3306
      name: murano
      user: murano
      password: password
    identity:
      engine: keystone
      host: 10.10.20.20
      port: 35357
      tenant: service
      user: murano
      password: password
    message_queue:
      engine: rabbitmq
      members:
      - host: 192.168.1.13
      - host: 192.168.1.14
      - host: 192.168.1.15
      port: 5672
      user: openstack
      password: supersecret
      virtual_host: '/openstack'
    murano_agent_queue:
      engine: rabbitmq
      port: 5672
      host: 192.168.1.10
      user: openstack
      password: supersecretcatalogpassword
      virtual_host: '/openstack'
    bind: 
      address: 127.0.0.1
      port: 8082
    network:
      external: ext-net

