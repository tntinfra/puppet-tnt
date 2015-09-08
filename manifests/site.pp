node 'noc.tntinfra.net' {
  include role::noc
}

node 'sippma.tntinfra.net' {
  include role::sippma::base
}

node 'sippma-db.tntinfra.net' {
  include role::sippma::db
}

node 'sippma-web.tntinfra.net' {
  include role::sippma::web
}
