sudo yum -y install svn git git-svn telnet

sudo yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel libcurl-devel ImageMagick ImageMagick-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison 

sudo sed --in-place "s/SELINUX=enforcing/SELINUX=permissive/g" /etc/selinux/config
sudo setenforce 0

sudo firewall-cmd --add-service=http
sudo firewall-cmd --add-service=https
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --add-service=https --permanent
