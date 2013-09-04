# Class: gridrepo
#
# This module manages gridrepo
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class gridrepo inherits gridrepo::params {



if $emi_enabled {
  include gridrepo::emi
  }
        
if $umd_enabled {
   include gridrepo::umd
  }

if $umd_testing_enabled {
   include gridrepo::umdtesting
   }
if $wlcg_enabled {
   include gridrepo::wlcg
   }

}


