### A Vagrant box for autolwe

This repository contains the scripts for running `autolwe` at https://github.com/autolwe/autolwe, based on the instructions in the repository.
To use the box, first install `vagrant` from a package manager or from https://www.vagrantup.com/. Install the plugin
```
(host) $ vagrant plugin install vagrant-reload
```
Next clone the repository and issue
```
(host) $ git clone https://github.com/hungshihhan/vagrant-autolwe.git
(host) $ cd vagrant-autolwe
(host) $ vagrant up
```
to create a Vagrant box. The setup takes a while. Once finished, SSH into the box
```
(host) $ vagrant ssh
```
and now you are ready to work on proofs with the virtual machine.

To run a test case, e.g., `example/ok/bb1.zc`, open the file with `emacs` 
```
(client) $ emacs ~/autolwe/example/ok/bb1.zc
```

