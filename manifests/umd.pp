class gridrepo::umd (

  $umd_enabled  =  $gridrepo::params::umd_enabled,
  $umd_version  =  $gridrepo::params::umd_version,
  $umd_priority =  $gridrepo::params::umd_priority,

) inherits gridrepo::params {
  
  $umd_soft = 'http://repository.egi.eu/sw/production/umd'

  $repoprefix = $operatingsystemmajrelease ? {
     '7'     => 'centos',
     /(5|6)/ => 'sl',
     default => 'centos',
  }

  yumrepo {
    "UMD-base":
        descr => "UMD  SL ${operatingsystemmajrelease} base ",
        baseurl => "${umd_soft}/${umd_version}/${repoprefix}${operatingsystemmajrelease}/\$basearch/base",
        priority => "${umd_priority}",
        gpgcheck => '0',
        protect  => '1',
        gpgkey => 'absent',
        enabled => $umd_enabled ? {
           true => "1",
           false => "0"
        };
  }

  yumrepo {
    "UMD-updates":
        descr => "UMD  SL ${operatingsystemmajrelease} updates ",
        baseurl => "${umd_soft}/${umd_version}/${repoprefix}${operatingsystemmajrelease}/\$basearch/updates",
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
