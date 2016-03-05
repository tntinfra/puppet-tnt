# install and configure elasticsearch
#
class profile::tnt::elasticsearch {

  $elastic_config = hiera('elasticsearch::config')

  # config data in hiera
  include elasticsearch
  elasticsearch::instance { 'tntinfra':
    config => $elastic_config,
  }
}
