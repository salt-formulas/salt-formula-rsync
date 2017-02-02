
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
        timeout: 300

## Read more

* http://rsync.samba.org/
* http://www.togaware.com/linux/survivor/Rsync_Server.html

Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-rsync/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-rsync

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
