# sippma postgresql installation
class profile::sippma::postgresql {
  package { 'postgresql94-server':
    ensure => 'installed'
  } ->
  package { 'postgresql94-client':
    ensure => 'installed',
  } ->
  file { '/usr/local/pgsql/data/postgresql.conf':
    ensure => 'file',
    source => 'puppet:///modules/profile/postgresql.conf',
  } ->
  file { '/usr/local/pgsql/data/pg_hba.conf':
    ensure => 'file',
    source => 'puppet:///modules/profile/pg_hba.conf',
  } ->
  file_line { 'postgresql_startup':
    ensure => 'present',
    path   => '/etc/rc.conf',
    line   => 'postgresql_enable="YES"'
  } ->
  service { 'postgresql':
    ensure  => 'running',
    enable => true,
  }
}
