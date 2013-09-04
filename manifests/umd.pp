class gridrepo::umd inherits gridrepo::params {
  
  $umd_soft = 'http://repository.egi.eu/sw/production/umd'
  yumbase::ai121yumrepo {
    "UMD-base":
            descr => "UMD  SL ${operatingsystemmajrelease} base ",
            baseurl => "${umd_soft}/${umd_version}/sl${operatingsystemmajrelease}/\$basearch/base",
            priority => "${umd_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $umd_enabled ? {
              true => "1",
              false => "0"
            };
  }
  yumbase::ai121yumrepo {
    "UMD-updates":
            descr => "UMD  SL ${operatingsystemmajrelease} updates ",
            baseurl => "${umd_soft}/${umd_version}/sl${operatingsystemmajrelease}/\$basearch/updates",
            priority => "${umd_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $umd_enabled ? {
              true => "1",
              false => "0"
            };
    
      
  }
}
