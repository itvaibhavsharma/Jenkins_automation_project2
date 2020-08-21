From centos:latest
run yum install wget yum-utils -y
run wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
run rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
run yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
run yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm
run yum install jenkins java-1.8.0-openjdk-devel net-tools git python3 docker-ce -y --nogpgcheck
run echo "jenkins ALL=(ALL) NOPASSED:ALL" >> /etc/sudoers
cmd java -jar /usr/lib/jenkins/jenkins.war



