class profile::sippma::rvm {
  include rvm

  rvm::system_user { sippma: }

  rvm_system_ruby {
    'ruby-2.1.6':
      ensure      => 'present',
  }

  rvm_gemset {
    'ruby-2.1.6@sippma':
      ensure  => present,
      require => Rvm_system_ruby['ruby-2.1.6'];
  }
}
