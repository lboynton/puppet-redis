class redis {
    package { 'redis':
        ensure => installed,
        require => [
            Class['epel'],
        ]
    }
}