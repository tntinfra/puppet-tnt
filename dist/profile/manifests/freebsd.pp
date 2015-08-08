# freebsd settings
#
class profile::freebsd {
  class { 'pkgng':
    purge_repos_d => false
  }

  Package {
    provider => 'pkgng',
  }
}
