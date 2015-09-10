sudo bash -c "echo '192.168.0.161 hortonworks-1' >> /etc/hosts"
sudo bash -c "echo '192.168.0.162 hortonworks-2' >> /etc/hosts"
sudo bash -c "echo '192.168.0.159 hortonworks-3' >> /etc/hosts"
sudo bash -c "echo '192.168.0.160 hortonworks-4' >> /etc/hosts"
sudo bash -c "echo '192.168.0.163 hortonworks-5' >> /etc/hosts"
sudo bash -c "echo '192.168.0.158 hortonworks-6' >> /etc/hosts"
sudo bash -c "echo '192.168.0.165 hortonworks-7' >> /etc/hosts"
sudo bash -c "echo '192.168.0.164 hortonworks-8' >> /etc/hosts"
sudo bash -c "echo 'proxy=http://140.96.81.177:8000' >> /etc/yum.conf"
export http_proxy=http://140.96.81.177:8000
export https_proxy=http://140.96.81.177:8000
sudo service iptables save
sudo service iptables stop
sudo chkconfig iptables off
sudo yum -y install ntp 
sudo chkconfig ntpd on
sudo ntpdate time.stdtime.gov.tw
sudo service ntpd start
sudo bash -c "echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled"
sudo bash -c "echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag"
