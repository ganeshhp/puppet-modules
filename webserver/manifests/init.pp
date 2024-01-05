class webserver ( $doc_root = '/var/www/html' ) {

#   $doc_root = '/var/www/html'
   

   $webserver = $osfamily ? {
      'redhat' => 'httpd',
      'debian' => 'apache2',
       default => 'apache2',
       }

   package { $webserver:
       ensure => 'present',
       }
   service { $webserver:
       ensure => 'running',
       enable => true,
       }

   file { 'index.html':
       ensure  => 'present',
       path    => "$doc_root"/index.html,
       content => "<html><title>Welcome Page</title>
                <h1>Hello, Welcome to the training session on Puppet!</h1></html>"
       }
     }

#include webserver::user



