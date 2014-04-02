
# rsync

rsync is an open source utility that provides fast incremental file transfer. 

## Sample pillar

    rsync:
      server:
        enabled: true
        bind:
          address: 0.0.0.0
        modules:
        - name: name
          max connections: 2
          device: /srv/rsync/
          read only: False

## Read more

* http://rsync.samba.org/
