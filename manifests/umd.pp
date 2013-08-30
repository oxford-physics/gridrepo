class gridrepo::umd inherits gridrepo::params {
  
  $umd_soft = 'http://repository.egi.eu/sw/production/umd'
  yumrepo {
    "UMD-base":
            descr => "UMD ${umd_version} SL ${operatingsystemmajrelease} base ",
            baseurl => "${umd_soft}/${umd_version}/sl${operatingsystemmajrelease}/\$basearch/base",
            priority => "${umd_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $umd_enabled ? {
              true => "1",
              false => "0"
            };
    "UMD-updates":
            descr => "UMD ${umd_version} SL ${operatingsystemmajrelease} updates ",
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