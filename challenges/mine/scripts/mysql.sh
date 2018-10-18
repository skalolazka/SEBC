ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'yum -y install wget'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'wget -O /etc/yum.repos.d/mysql-community-source.repo https://raw.githubusercontent.com/skalolazka/SEBC/master/challenges/mine/repos/mysql-community-source.repo'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'wget -O /etc/yum.repos.d/mysql-community.repo https://raw.githubusercontent.com/skalolazka/SEBC/master/challenges/mine/repos/mysql-community.repo'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'wget -O /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql https://raw.githubusercontent.com/skalolazka/SEBC/master/challenges/mine/RPM-GPG-KEY-mysql'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'yum -y update'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'yum -y install mysql'
head -n2 all_hosts > short_hosts
ansible -i short_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'yum -y install mysql-server'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'wget -O /home/centos/mysql-connector https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.47.tar.gz'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'tar -zxf /home/centos/mysql-connector -C /tmp/'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'mkdir -p /usr/share/java/'
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'cp /tmp/mysql-connector-java-5.1.47/mysql-connector-java-5.1.31-bin.jar /usr/share/java/mysql-connector-java.jar'
