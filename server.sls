{% from "rsync/map.jinja" import server with context %}

{%- if server.enabled %}

rsync_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

/etc/rsyncd.conf:
  file.managed:
  - source: salt://rsync/conf/rsyncd.conf
  - template: jinja
  - user: root
  - group: root
  - mode: 644
  - require:
    - pkg: rsync_packages

rsync_service:
  service.running:
  - name: {{ server.service }}
  - watch:
    - file: /etc/rsyncd.conf

{%- endif %}
