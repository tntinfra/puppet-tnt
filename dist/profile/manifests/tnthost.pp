# common setup of tnt managed host
class profile::tnthost {

  $ssh_keys = hiera('tnthost::ssh_keys')

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

  $ssh_keys.each | Hash $key| {
    ssh_authorized_key { $key['email']:
      ensure => 'present',
      key  => $key['key'],
      type => $key['type'],
      user => 'tntadmin',
    }
  }
}
