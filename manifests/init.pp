class redis(
    $databases        = 16,
    $maxmemory        = undef,
    $maxmemory_policy = 'volatile-lru',
) {
    include epel

    package { 'redis':
        ensure     => installed,
        require    => Class['epel'],
    }
    file { '/etc/redis.conf':
        content => template('redis/redis.conf.erb'),
        notify  => Service['redis'],
    }
    service { 'redis':
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => [
            Package['redis'],
            File['/etc/redis.conf'],
        ]
    }
}