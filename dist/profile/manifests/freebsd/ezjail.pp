class profile::freebsd::jail {
  package { 'ezjail':
    ensure => 'installed',
  }

  package { 'iocage':
    ensure => 'installed',
  }
}
