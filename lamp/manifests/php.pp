

class lamp::php {

include lamp::update
  
#  exec { 'apt-update':
#   command => '/usr/bin/apt update -y'
#}

  package { 'php5*':
    ensure => present,
    require => Exec['apt-update'],    
}

}
