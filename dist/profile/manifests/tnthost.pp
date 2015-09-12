# common setup of tnt managed host
class profile::tnthost {
  $ssh_keys      = hiera('tntadmin::ssh_keys')
  $tntadmin_home = hiera('tntadmin::home')

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

  package { 'sudo':
    ensure => 'installed',
  }

  class { 'sudo':
    config_file_replace => false,
    purge               => false,
  }

  sudo::conf { 'tntadmin_root':
    priority => 10,
    source => 'puppet:///modules/profile/sudoers_tntadmin'
  }
}
