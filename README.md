### A Vagrant box for autolwe

This repository contains the scripts for running `autolwe` at https://github.com/autolwe/autolwe, based on the instructions in the repository.
To use the box, clone the repository and issue
```
(host) $ vagrant up
```
to create a Vagrant box. The setup takes a while. Once finished, SSH into the box via
```
(host) $ vagrant ssh
```
and now you are ready to work on proofs using `autolwe`!

To run a test case, e.g., `example/ok/bb1.zc`, open the file with `emacs` 
```
(client) $ emacs ~/autolwe/example/ok/bb1.zc
```

