1. Installation of Docker :

	* sudo apt update -y
	* sudo apt install -y docker.io
	* sudo systemctl enable docker
	* sudo systemctl start docker
        * sudo usermod -aG docker $USER
        * newgrp docker
	* sudo usermod -aG docker ubuntu


2. Installation of docker compose :
	1. Update your package list
	sudo apt update

	2. Install Docker's dependencies
	sudo apt install ca-certificates curl gnupg lsb-release -y

	3. Add Docker’s GPG key
	sudo mkdir -p /etc/apt/keyrings
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

	4. Add Docker repo
	echo \
  	  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  	  https://download.docker.com/linux/ubuntu \
  	  $(lsb_release -cs) stable" | \
  	  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


	5. Update package list again
	sudo apt update

	6. Install the docker-compose plugin
	sudo apt install docker-compose-plugin -y

	7.docker compose version

To stop the docker container for v1 :
""
docker compose -f docker-compose.prod.yml down

""