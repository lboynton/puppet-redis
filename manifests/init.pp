class redis(
    $databases        = 16,
    $maxmemory        = undef,
    $maxmemory_policy = 'volatile-lru',
) {
    package { 'redis':
        ensure => installed,
        require => [
            Class['epel'],
        ]
    }
    file { '/etc/redis.conf':
        content => template('redis/redis.conf.erb'),
    }
}