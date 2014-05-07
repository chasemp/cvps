class ssh {

    file {'/root/.ssh/authorized_keys':
        ensure  => present,
        content => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8/wR/u9htiQ1zCh7NauTs4aR08Cv0oPI+lUPmYq6jMkOqPdpmqGv966BMMa0oaz8C6/n79NhCxom9ekwIXzEcbaB0yW31sKoWad/2NSmsJ53VE42NB1J9H7RcryKFRyrvb4tjLOPPn9WiGqzwHDTAdJf/Pw6bV5fZwjlpMTo6YL+beYSv3HiLo0Ri78mZLGpUCRNU+DvmWP42xm/57po1uKkITcY9Ql8pj0FVgfWz/IV1K2N+QzvWVLw3Z0DTXLgxWg3BuQsg4MLWCU8cY22jlfhcSQXXuX/TVI/A8Lpk5pNPbLjOzGUBMPY9YOag64GxLuVVexJE8JG3EaKWLTXz cpettet@cair',
    }
    ->
    file {'/etc/ssh/sshd_config':
        ensure  => present,
        source  => "puppet:///modules/ssh/sshd_config",
    }
    ~>
    service { 'ssh':
        ensure => running,
        enable => true,
        hasrestart => true,
        hasstatus => false,
    }
}
