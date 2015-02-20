{%- if pillar.murano is defined %}
include:
{%- if pillar.murano.server is defined %}
- murano.server
{%- endif %}
{%- endif %}