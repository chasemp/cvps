class common {
    package {
        ['tree', 'ufw', 'nmap', 'chkconfig', 'ntp']:
            ensure => present,
    }

    file { '/etc/motd':
        content => '',
    }
}
