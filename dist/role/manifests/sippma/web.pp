# sippma web host
class role::sippma::web {
  include profile::tnthost
  include profile::freebsd
  include profile::sippma::web
  include profile::sippma::rvm
  include profile::sippma::hosts
}
