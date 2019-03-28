# install docker following instuctions from:
#   1) https://askubuntu.com/questions/938700/how-do-i-install-docker-on-ubuntu-16-04-lts
#   2) https://askubuntu.com/questions/1030179/package-docker-ce-has-no-installation-candidate-in-18-04

# Set up the docker repository
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker CE
sudo apt update
sudo apt-get install docker-ce

# Verify the installation
sudo docker run hello-world

