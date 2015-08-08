# freebsd settings
#
class profile::freebsd {

  if $facts['os']['family'] == 'FreeBSD' {
    class { 'pkgng':
      purge_repos_d => false
    }

    Package {
      provider => 'pkgng',
    }
  }
}
