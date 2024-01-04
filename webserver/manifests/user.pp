
class webserver::user {

       user { 'ganeshhp':
	  ensure   => 'present',
	  provider => 'useradd',
	}

}


