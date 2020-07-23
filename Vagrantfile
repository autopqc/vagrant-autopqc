Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 2
    vb.name = "autopqc"
  end

  config.vm.box = "archlinux/archlinux"
  
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  config.vm.provision "shell", path: "provision.sh", privileged: false
  config.vm.provision :reload
  config.vm.network :private_network, ip: "192.168.44.44"
end
