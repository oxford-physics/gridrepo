class gridrepo::umdtesting (

  $umd_version           =  $gridrepo::params::umd_version ,
  $umd_testing_enabled   =  $gridrepo::params::umd_testing_enabled ,
  $umd_testing_priority  =  $gridrepo::params::umd_testing_priority,

) inherits gridrepo::params {
  
  $umd_soft = 'http://repository.egi.eu/sw/testing/umd'
  $repoprefix = $operatingsystemmajrelease ? {
    '7'     => 'centos',
    /(5|6)/ => 'sl',
    default => 'centos',
  }

  yumrepo {
    "UMD-testing":
        descr    => "UMD  SL ${operatingsystemmajrelease} testing ",
        baseurl  => "${umd_soft}/${umd_version}/${repoprefix}${operatingsystemmajrelease}/\$basearch",
        priority => "${umd_testing_priority}",
        gpgcheck => '0',
        protect  => '1',
        gpgkey   => 'absent',
        enabled  => $umd_testing_enabled ? {
           true => "1",
           false => "0"
        };
    }
}
