{%- from "murano/map.jinja" import server with context %}
{%- if server.enabled %}

murano_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

/etc/murano/murano.conf:
  file.managed:
  - source: salt://murano/files/{{ server.version }}/murano.conf.{{ grains.os_family }}
  - template: jinja
  - require:
    - pkg: murano_packages

murano_install_database:
  cmd.run:
  - names:
    - murano-db-manage --config-file /etc/murano/murano.conf upgrade
  {%- if grains.get('noservices') %}
  - onlyif: /bin/false
  {%- endif %}
  - require:
    - file: /etc/murano/murano.conf

murano_server_services:
  service.running:
  - enable: true
  - names: {{ server.services }}
  {%- if grains.get('noservices') %}
  - onlyif: /bin/false
  {%- endif %}
  - require:
    - cmd: murano_install_database
  - watch:
    - file: /etc/murano/murano.conf

{%- endif %}
