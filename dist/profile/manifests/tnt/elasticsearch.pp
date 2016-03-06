# install and configure elasticsearch
#
class profile::tnt::elasticsearch {

  $elastic_config = hiera('elasticsearch::config')

  # config data in hiera
  contain elasticsearch
  elasticsearch::instance { 'tntinfra':
    config => $elastic_config,
  }

  # config data in hiera
  contain logstash

  contain fluentd
}
