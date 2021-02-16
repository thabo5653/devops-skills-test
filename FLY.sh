if [[ $(which docker) && $(docker --version) ]]; then
    echo $(docker --version)
  else
    echo "Install docker assuming it's on Linux"
    echo $(sudo apt-get update)
    echo $(sudo apt-get install docker-ce docker-ce-cli containerd.io)
    
fi

if [ "$(docker ps -qa -f name=ALFRED)" ]; then
    echo ":: Found container - ALFRED"
    if [ "$(docker ps -q -f name=$ALFRED)" ]; then
        echo ":: Stopping running container - ALFRED"
        docker stop ALFRED;
    fi
    echo ":: Removing stopped container - $CNAME"
    docker rm ALFRED;
fi

    $(docker run --name ALFRED linuxserver/mariadb:latest)

   #$(docker run -v /var/lib/mysql/:/var/lib/mysql/ --name ALFRED linuxserver/mariadb:latest)
