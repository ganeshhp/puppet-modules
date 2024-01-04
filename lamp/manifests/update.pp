
class lamp::update  {
   exec { 'apt-update':
     command => '/usr/bin/apt update -y'
 }
}

