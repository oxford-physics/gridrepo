class gridrepo::emi inherits gridrepo::params {
 
  $emi_soft = 'http://emisoft.web.cern.ch/emisoft/dist/EMI'
 yumbase::ai121yumrepo {
        "EMI-base":
            descr => "EMI SL ${operatingsystemmajrelease} base ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/base",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };
}
   yumbase::ai121yumrepo {
         "EMI-contribs":
            descr => "EMI  SL ${operatingsystemmajrelease} contrib ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/contribs",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };   
    }
    yumbase::ai121yumrepo {   
       "EMI-third-party":
            descr => "EMI  SL ${operatingsystemmajrelease} third-party ",
            baseurl => "${emi_soft}/${emi_version}/sl${operatingsystemmajrelease}/\$basearch/third-party",
            priority => "${emi_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $emi_enabled ? {
              true => "1",
              false => "0"
            };
  }
   yumbase::ai121yumrepo {
          "EMI-updates":
            descr => "EMI SL ${operatingsystemmajrelease} updates",
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
