class gridrepo::emi inherits gridrepo::params {
 
  $emi_soft = 'http://emisoft.web.cern.ch/emisoft/dist/EMI'
 yumrepo {
        "EMI-base":
            descr => "EMI ${emi_version} SL ${operatingsystemmajrelease} base ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/base",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };
         "EMI-contribs":
            descr => "EMI ${emi_version} SL ${operatingsystemmajrelease} contrib ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/contribs",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };   
          "EMI-third-party":
            descr => "EMI ${emi_version} SL ${operatingsystemmajrelease} third-party ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/third-party",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };
          "EMI-updates":
            descr => "EMI ${emi_version} SL ${operatingsystemmajrelease} updates",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/updates",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };  
  
}

}