java -version
#if java is not installed then

sudo apt-get update
#update

sudo apt-get install default-jdk -y
#java install

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
#Import the GPG key for Jenkins repo into our local environment
# | adds key directly into the apt-get file system

echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
#Add the repo to list of sources
#souces list - file that apt get uses to locate package repo on the internet

sudo apt-get update
#Update package index



sudo apt-get install jenkins
#Install Jenkins

systemctl status jenkins
#Shows jenkins status

#publicip(or localhost):8080 to view jenkins on browser

#to view public ip of vm
#dig +short myip.opendns.com @resolver1.opendns.com

#To unlock Jenkins view initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
