# ansible install

#for ansible dependency (centos 6)
yum -y install PyYAML
yum -y install python-paramiko
yum -y install python-jinja2

cd /tmp
git clone https://github.com/ansible/ansible.git
cd ansible
make
make install

# ansible localhost settings
echo "export ANSIBLE_HOSTS=/vagrant/ansible_hosts" > /etc/profile.d/ansible.sh

curl https://raw.github.com/mitchellh/vagrant/master/keys/vagrant > ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa
ssh-agent bash
ssh-add ~/.ssh/id_rsa

