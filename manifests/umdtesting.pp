class gridrepo::umdtesting inherits gridrepo::params {
  
  $umd_soft = 'http://repository.egi.eu/sw/testing/umd'
  yumbase::ai121yumrepo {
    "UMD-testing":
            descr => "UMD  SL ${operatingsystemmajrelease} testing ",
            baseurl => "${umd_soft}/${umd_version}/sl${operatingsystemmajrelease}/\$basearch",
            priority => "${umd_testing_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $umd_testing_enabled ? {
              true => "1",
              false => "0"
            };
            }
}
