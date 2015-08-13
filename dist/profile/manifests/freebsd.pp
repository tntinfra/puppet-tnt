# freebsd settings
#
class profile::freebsd {

  if $::osfamily == 'FreeBSD' {
    class { 'pkgng':
      purge_repos_d => false
    }

    Package {
      provider => 'pkgng',
    }
  }
}
