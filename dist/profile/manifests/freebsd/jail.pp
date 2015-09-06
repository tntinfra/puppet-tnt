class profile::freebsd::jail {
  package { 'ezjail':
    ensure => 'installed',
  }

  package { 'iocage':
    ensure => 'installed',
  }

  file_line { 'clone_lo1_interface':
    ensure => 'present',
    path   => '/etc/rc.conf'
    line   => 'cloned_interfaces="${cloned_interfaces} lo1"'
  }
}
