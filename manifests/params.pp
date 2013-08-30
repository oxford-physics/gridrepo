class gridrepo::params {
  $emi_enabled  = hiera ('gridrepo::params::emi_enabled', true)
  $emi_version = hiera ('gridrepo::params::emi_version', '3')  
  $emi_priority = hiera ('gridrepo::params::emi_priority', '15')
  
  $umd_enabled  = hiera ('gridrepo::params::umd_enabled', false)
  $umd_version  = hiera ('gridrepo::params::umd_version', '3')
  $umd_priority  = hiera ('gridrepo::params::umd_priority', '15')
  
  $umd_testing_enabled  = hiera ('gridrepo::params::umd_testing_enabled', false)
  $umd_testing_priority =   hiera ('gridrepo::params::umd_testing_priority', '18')
  
  $wlcg_enabled          = hiera ('gridrepo::params::wlcg_enabled', false)
  $wlcg_priority        = hiera ('gridrepo::params::umd_priority', '10')   
  $wlcginclude_pkgs   = hiera ('gridrepo::params::wlcginclude_pkgs', 'HEP_OSlibs_SL6')
  
  
}