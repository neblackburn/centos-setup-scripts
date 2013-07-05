yum -y update
yum install -y screen
yum install -y mysql mysql-server
chkconfig --levels 235 mysqld on
/etc/init.d/mysqld start
mysql_secure_installation
yum install -y httpd
chkconfig --levels 235 httpd on
/etc/init.d/httpd start
yum install -y php php-mysql php-gd php-mbstring php-pear php-pecl-apc

mkdir ~/tmp

git clone https://github.com/neblackburn/vimrc.git
ln -s vimrc/.vimrc ~/.vimrc

git clone https://github.com/neblackburn/screenrc.git
ln -s screenrc/.screenrc ~/.screenrc
