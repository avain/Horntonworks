#https://ambari.apache.org/1.2.2/installing-hadoop-using-ambari/content/ambari-chap2.1.2.html
#https://cwiki.apache.org/confluence/display/AMBARI/Install+Ambari+2.1.0+from+Public+Repositories <-Centos 7
sudo yum install wget -y
#wget http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.0/ambari.repo  <---HDP 2.0-2.2
#wget http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.1.0/ambari.repo  <---HDP 2.0-2.3
wget http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.1.0/ambari.repo


sudo cp ambari.repo /etc/yum.repos.d/
sudo -E yum update
sudo -E yum install ambari-server
