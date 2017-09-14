{% from "rsync/map.jinja" import server with context %}

{%- if server.enabled %}

rsync_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

rsync_config:
  file.managed:
  - name: /etc/rsyncd.conf
  - source: salt://rsync/files/rsyncd.conf
  - template: jinja
  - user: root
  - group: root
  - mode: 644
  - require:
    - pkg: rsync_packages

rsync_startup_config:
  file.managed:
  - name: {{ server.config }}
  - source: salt://rsync/files/rsync
  - template: jinja
  - user: root
  - group: root
  - mode: 644
  - require:
    - pkg: rsync_packages

rsync_service:
  service.running:
  - name: {{ server.service }}
  - enable: true
  - watch:
    - file: rsync_config
    - file: rsync_startup_config

{%- endif %}
