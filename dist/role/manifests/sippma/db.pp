# sippma database host
class role::sippma::db {
  include profile::tnthost
  include profile::freebsd
  include profile::sippma::postgresql
  include profile::sippma::hosts
}
