# base sippma host
class role::sippma::base {
  include profile::tnthost
  include profile::freebsd
  include profile::freebsd::ezjail
}
