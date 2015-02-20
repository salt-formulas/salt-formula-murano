
======
Murano
======

Murano Project introduces an application catalog, which allows application developers and cloud administrators to publish various cloud-ready applications in a browsable‎ categorised catalog, which may be used by the cloud users (including the inexperienced ones) to pick-up the needed applications and services and composes the reliable environments out of them in a "push-the-button" manner.

Sample pillars
==============

Single murano services on the controller node

    murano:
      server:
        enabled: true
        version: icehouse
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
          host: 10.10.20.20
          port: 5672
          user: openstack
          password: password
          virtual_host: '/openstack'
          ha_queues: True

Read more
=========

* https://wiki.openstack.org/wiki/Murano/ProjectOverview
* http://murano.readthedocs.org/en/latest/install/
* https://github.com/stackforge/murano
* https://github.com/stackforge/murano-apps