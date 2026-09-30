#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/sonarqube/sonarqube-5.1.zip
unzip sonarqube-5.1.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-5.1 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar
cd /opt/sonarqube-5.1/bin/linux-x86-64/
./sonar.sh start


#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
