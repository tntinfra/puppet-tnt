class profile::sippma::web {
  group { 'sippma':
    ensure => present,
    gid    => '1977'
  } ->
  user { 'sippma':
    ensure     => present,
    uid        => '1977',
    gid        => '1977',
    managehome => true,
  }

  sudo::conf { 'tntadmin_sippam':
    priority => 10,
    content  => 'tntadmin ALL=(sippma) NOPASSWD: ALL',
  }
}
