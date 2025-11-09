Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vbguest.auto_update = false


  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = "2"
  end

  config.vm.provision "shell", path: "./provision.sh"

end
