# add hosts to /etc/hosts
#
class profile::tnt::hosts {
  hosts { 'stdout':
    ensure       => present,
    ip           => '192.168.133.3',
    host_aliases => [ 'git', 'stdout.stderr.at', 'stderr.at']
  }

}
