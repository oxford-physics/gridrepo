# gridrepo #

This is the gridrepo module. It can provide fallowing repos

emi
umd
umd_testing
wlcg

Configuration data can be provided by hiera
gridrepo::params::emi_enabled: true
gridrepo::params::emi_version: '3'

Will set up an emi3 repo.

Dependencies :

It require yumbase::ai121yumrepo


 https://github.com/oxford-physics/yumbase

