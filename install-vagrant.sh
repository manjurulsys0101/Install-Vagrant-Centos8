
---------->>>>>>>>-----------Install Virtualbox onCentos8:----------->>>>>>>>>>>>
dnf update -y --allowerasing --nobest
sudo dnf -y install wget
wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo
sudo mv virtualbox.repo /etc/yum.repos.d/
wget -q https://www.virtualbox.org/download/oracle_vbox.asc
sudo rpm --import oracle_vbox.asc
sudo dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf -y install binutils kernel-devel kernel-headers libgomp make patch gcc glibc-headers glibc-devel dkms
sudo dnf install -y VirtualBox-6.1
sudo usermod -aG vboxusers $USER
sudo /usr/lib/virtualbox/vboxdrv.sh setup
vboxmanage --version
VirtualBox

---------->>>>>>>>-----------Install Vagrant On Centos8:----------->>>>>>>>>>>>
sudo dnf groupinstall "Development Tools" -y 
sudo dnf -y install rsync gcc zlib-devel libvirt-devel cmake
sudo dnf install -y ruby ruby-devel
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum install vagrant
vagrant --version
vagrant --help


   27  dnf update -y --allowerasing --nobest
   28  sudo dnf install config-manager --add-repo=https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
   29  sudo dnf groupinstall "Development Tools" -y
   30  sudo dnf -y install rsync gcc zlib-devel libvirt-devel cmake
   31  sudo dnf install -y ruby ruby-devel
   32  sudo yum install -y yum-utils
   33  sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
   34  sudo yum install vagrant
   35  mkdir /vagrant
   36  cd /vagrant/
   37  vim Centos8.sh
   38  mkdir Centos8
   39  cd Centos8/
   40  vim Vagrantfile
   41  vagrant up
