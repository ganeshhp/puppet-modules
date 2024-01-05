
class webserver::user ( $home_path = '/home/ganeshhp', $usrname = 'ganeshhp', $uid) {

       user { "$usrname":
	  ensure   => 'present',
	  provider => 'useradd',
          home     => "$home_path",
          uid      => "$uid",
         
 }

}


