# jenkins_server
Docker files for creating a Jenkins Server

Create a jenkins user, and the following folder structure:

/home/jenkins/jenkins_wrk
/home/jenkins/jenkins_wrk/volumes/jenkins_home


The docker-compose file:

1.	Uses the Dockerfile with jenkinsci/blueocean image as its base – This is a jenkins image that comes bundled with the Blue Ocean UI
2.	Exposes the internal port 8080 to the outside world at port 2000
3.	Creates a volume that maps /var/jenkins_home inside the container to /home/jenkins/volumes/jenkins_home on the host. 
4.	The Jenkins image included above also contains Docker within itself. A volume mapping is included to link the docker process within the container to that of the host.
5.	Sets up an internal network called ‘net’
