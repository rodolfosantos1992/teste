class base {

case $::osfamily{

	"RedHat":{ $web=["epel-release","git","vim","sysstat","htop","sl","figlet","httpd"] }
	#"RedHat":{ $web="httpd" }

	"Debian":{ $web=["git","vim","sysstat","htop","sl","figlet","apache2"] }
	#"Debian":{ $web="apache2" }


}



package { $web:
  ensure => 'present',
}

#service {"$web:
#          ensure=>running,}

}
