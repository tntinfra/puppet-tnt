# noc host role
class role::noc {
  include profile::tnthost
  include profile::puppetmaster
}
