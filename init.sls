
include:
{%- if pillar.rsync.server is defined %}
- rsync.server
{%- endif %}
