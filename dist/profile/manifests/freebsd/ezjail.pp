class profile::freebsd::ezjail {
  package { 'ezjail':
    ensure => 'installed',
  }
}
