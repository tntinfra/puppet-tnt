# common setup of tnt managed host
class profile::tnthost {

  $tntadmin_home = $facts['os']['family'] ? {
    'RedHat'  => '/home/tntadmin',
    'FreeBSD' => '/usr/home/tntadmin',
  }

  group { 'tntadmin':
    ensure => 'present',
    gid    => '1000',
  } ->
  user { 'tntadmin':
    ensure     => 'present',
    uid        => '1000',
    gid        => '1000',
    managehome => true,
  }
}
