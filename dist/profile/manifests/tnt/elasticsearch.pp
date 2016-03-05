# install and configure elasticsearch
#
class profile::tnt::elasticsearch {

  # config data in hiera
  include elasticsearch
  include elasticseach::instance
}
