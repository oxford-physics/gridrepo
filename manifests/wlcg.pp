class gridrepo::wlcg inherits gridrepo::params {
  
  
  yumrepo {
    "wlcg":
            descr => "WLCG repo  SL ${operatingsystemmajrelease} base ",
            baseurl => "http://linuxsoft.cern.ch/wlcg/sl${operatingsystemmajrelease}/\$basearch",
            priority => "${wlcg_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            includepkgs => ${wlcginclude_pkgs},
            enabled => $wlcg_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
}