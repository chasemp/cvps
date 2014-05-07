class common {
    package {
        ['tree', 'ufw', 'nmap', 'chkconfig']:
            ensure => present,
    }

    file { '/etc/motd':
        content => '',
    }
}
