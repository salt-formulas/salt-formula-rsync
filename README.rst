
# rsync

rsync is an open source utility that provides fast incremental file transfer. 

## Sample pillar

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

## Read more

* http://rsync.samba.org/
* http://www.togaware.com/linux/survivor/Rsync_Server.html
