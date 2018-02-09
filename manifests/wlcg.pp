class gridrepo::wlcg (

  $wlcg_enabled     =  $gridrepo::params::wlcg_enabled,
  $wlcg_priority    =  $gridrepo::params::wlcg_priority,

) inherits gridrepo::params {


  $wlcg_soft  = 'http://linuxsoft.cern.ch/wlcg'

  $repoprefix = $operatingsystemmajrelease ? {
     '7'     => 'centos',
     /(5|6)/ => 'sl',
     default => 'centos',
  }
 
  yumrepo {
    "wlcg":
         descr => "WLCG repo ${repoprefix} ${operatingsystemmajrelease} base ",
         baseurl => "${wlcg_soft}/${repoprefix}${operatingsystemmajrelease}/\$basearch",
         priority => "${wlcg_priority}",
         gpgcheck => '0',
         protect  => '1',
         gpgkey => 'absent',
         enabled => $wlcg_enabled ? {
            true => "1",
            false => "0"
         };
            
     }
}
