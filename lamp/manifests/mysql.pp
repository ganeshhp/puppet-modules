

class lamp::mysql {

include lamp::update

#   exec { 'apt-update':
#    command => '/usr/bin/apt update -y'
# }

   package { 'mysql-server':
    name => mysql-server,
    require => Exec['apt-update'],
    ensure => present,

 }

   service { 'mysqlserver':
    ensure => running,
    enable => true,
    require => Package['mysql-server'],
 }

}
