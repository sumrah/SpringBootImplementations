#To change the directory in WSL(Windows Subsystem for Linux)
/mnt/c/users/sumrahfatima/documents/springworkspace/springboot-docker
--we use cd /mnt/c to change the directory to C drive i.e use mount feature(mnt)

#Commands

##Build docker image 
docker build -t springboot-docker-0.0.1-snapshot.jar .

##Run the docker image
 docker run springboot-docker-0.0.1-snapshot.jar:latest
 
##ENTRYPOINT
 #executables that will always run after the container is initiated
 
##To see the IP address on which docker container is running
 
 docker inspect --format "{{.NetworkSettings.IPAddress}}" <container id e2ca874b312f>
 
##docker tag [OPTIONS] IMAGE[:TAG] [REGISTRYHOST/][USERNAME/]NAME[:TAG]
--Then docker push using that same tag.

docker push NAME[:TAG]