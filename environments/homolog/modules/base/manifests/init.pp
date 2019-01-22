class base {

package{"figlet":
	ensure => present
	}

package{"cowsay":
	ensure => present
	}

service{"cron":
	ensure => running
	}


}
