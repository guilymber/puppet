class general {

case $::osfamily{

	"RedHat": {
	$pacotes = ["epel-relase","git,htop"]
	$web = "httpd"
		  }


	"debian": {
	$pacotes = ["git","htop"]
	$web = "apache2"
  		}

	}

package{$pacotes:
	ensure => present
	}

service{$web:
	ensure=> stopped
	}


}

