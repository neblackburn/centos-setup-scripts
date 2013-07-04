yum -y update
yum install -y mysql mysql-server
chkconfig --levels 235 mysqld on
/etc/init.d/mysqld start
mysql_secure_installation 
yum install -y httpd
chkconfig --levels 235 httpd on
/etc/init.d/httpd start
yum install -y php php-mysql php-gd php-mbstring php-pear php-pecl-apc
service iptables restart
