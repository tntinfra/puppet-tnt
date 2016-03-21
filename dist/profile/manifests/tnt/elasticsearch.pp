# install and configure elasticsearch
#
class profile::tnt::elasticsearch {

  $elastic_config = hiera('elasticsearch::config')

  # config data in hiera
  contain elasticsearch
  elasticsearch::instance { 'tntinfra':
    config => $elastic_config,
  }
  contain fluentd

  fluentd::plugin { 'fluent-plugin-elasticsearch': }
  fluentd::plugin { 'fluent-plugin-secure-forward': }
}
