class profile::sippma::hosts {
  host { 'noc':
    ensure => present,
    ip     => '192.168.122.101',
    host_aliases => 'noc.tntinfra.net'
  }

  host { 'sippma':
    ensure => present,
    ip     => '192.168.122.102',
    host_aliases => 'sippma.tntinfra.net'
  }

  host { 'web':
    ensure => present,
    ip     => '192.168.122.103',
    host_aliases => 'web.sippma.tntinfra.net'
  }

  host { 'db':
    ensure => present,
    ip     => '192.168.122.104',
    host_aliases => 'db.sippma.tntinfra.net'
  }
}
