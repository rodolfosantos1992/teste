class docker{

exec{"apt-get update":
	command=>"/usr/bin/apt-get update -y;/usr/bin/apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y;/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/apt-key add -;/usr/bin/add-apt-repository \
   'deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   xenial \
   stable'",}


exec{"mais um":command=>"/usr/bin/apt-get update -y",}


package{"docker-ce":
	ensure=>present,}



}
