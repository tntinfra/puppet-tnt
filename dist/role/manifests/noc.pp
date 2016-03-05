# noc host role
class role::noc {
  contain profile::tnt::common
  contain profile::tnt::hosts
  contain profile::tnt::elasticsearch
  contain profile::sippma::hosts
  contain profile::puppetmaster
}
