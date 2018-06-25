class exercicio {

case $::osfamily{

        "RedHat":{ $web=["cronie","git","httpd"] }

        "Debian":{ $web=["git","cron","apache2"] }


}



package { $web:
  ensure => 'present',
}


$criauser=["devops","jorge","judith"]

user { $criauser:
  ensure             => 'present',
}






        file{"/root/.bashrc":
                source=>"puppet:///modules/exercicio/bashrc",
                ensure=>present,
            }











}

