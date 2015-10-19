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
}
