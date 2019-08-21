
Vagrant.configure("2") do |config|

  config.vm.box = "bento/centos-7.3"

# 1
  config.vm.define "production" do |production|
    production.vm.hostname = "production"
    production.vm.network "private_network", ip: "192.168.33.20"
  end 

# 2
  config.vm.define "test" do |test|
    test.vm.hostname = "test"
    test.vm.network "private_network", ip: "192.168.33.30"
  end

# 3
  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "emessiha/ubuntu64-java"
    jenkins.vm.hostname = "jenkins"
    jenkins.vm.network "private_network", ip: "192.168.33.50" 
    jenkins.vm.provision "shell", path: "jenkins.sh"
  end

# 4
  config.vm.define "client" do |client|
    client.vm.hostname = "client"
    client.vm.network "private_network", ip: "192.168.33.10"
    client.vm.provision "shell", inline: <<-SHELL
      sudo yum install git -y
      sudo yum install epel-release -y
      sudo yum install ansible -y  
    SHELL
    client.vm.provision "shell", path: "client_script.sh"
    end
  

end
