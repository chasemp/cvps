class common {
    package {
        ['tree', 'ufw', 'nmap']:
            ensure => present,
    }

    file { '/etc/motd':
        content => '',
    }
}
