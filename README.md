Puppet Redis module
==============

This module allows you to install and configure Redis using puppet. Tested on CentOS 6.

Usage
--------------

```puppet
include redis
```

Or to configure redis:

```puppet
class { 'redis':
    databases        => 30,
    maxmemory        => '2g',
    maxmemory_policy => 'allkeys-lru',
}
```

These are the only configurable settings at the moment.

Dependencies
--------------
* [puppet-module-epel](https://github.com/stahnma/puppet-module-epel)
