
==============
Murano formula
==============

Murano Project introduces an application catalog, which allows application developers and cloud administrators to publish various cloud-ready applications in a browsable‎ categorised catalog, which may be used by the cloud users (including the inexperienced ones) to pick-up the needed applications and services and composes the reliable environments out of them in a "push-the-button" manner.

Sample pillars
==============

Single murano services on the controller node

.. code-block:: yaml

    murano:
      server:
        enabled: true
        version: liberty
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
          user: openstack
          password: supersecret
          virtual_host: '/openstack'
        murano_agent_queue:
          engine: rabbitmq
          port: 5672
          members:
          - host: 192.168.1.13
          - host: 192.168.1.14
          - host: 192.168.1.15
          user: openstack
          password: supersecretcatalogpassword

External links
==============

* https://wiki.openstack.org/wiki/Murano/ProjectOverview
* http://murano.readthedocs.org/en/latest/install/
* https://github.com/stackforge/murano
* https://github.com/stackforge/murano-apps

Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-murano/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-murano

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
