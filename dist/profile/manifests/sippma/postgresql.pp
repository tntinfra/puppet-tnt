# sippma postgresql installation
class profile::sippma::postgresql {
  package { 'postgresql94-server':
    ensure => 'installed'
  }

  package { 'postgresql94-client':
    ensure => 'installed',
  }
}
