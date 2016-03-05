# add hosts to /etc/hosts
#
class profile::tnt::hosts {
  host { 'stdout':
    ensure       => present,
    ip           => '192.168.133.3',
    host_aliases => [ 'git.stderr.at', 'stdout.stderr.at', 'stderr.at']
  }

}
