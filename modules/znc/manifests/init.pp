class znc {

    #for now newer from source
    #package { 'znc': ensure => present}
    #->
    user {'znc':
        ensure     => present,
        home       => "/home/${name}",
        allowdupe  => false,
        managehome => true,
        shell      => '/bin/sh',
    }

    file { '/usr/local/bin/runznc':
        ensure  => file,
        source  => "puppet:///modules/znc/runznc.sh",
        mode    => 0755,
    }

    #file { '/etc/znc_notify.sh':
    #    ensure  => file,
    #    source  => "puppet:///modules/znc/znc_notify.sh",
    #    mode    => 0755,
    #}
}
