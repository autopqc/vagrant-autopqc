
export LD_LIBRARY_PATH=/usr/local/lib:/home/vagrant/autolwe/_build/c_src

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm --needed wget base-devel git opam gmp libffi emacs

# download dependencies
cd ~
wget http://www.shoup.net/ntl/ntl-9.7.1.tar.gz
tar xvf ntl-9.7.1.tar.gz
wget http://www.mathematik.uni-kl.de/ftp/pub/Math/Factory/factory-4.0.2.tar.gz 
tar xvf factory-4.0.2.tar.gz
git clone https://github.com/autolwe/autolwe.git autolwe
git clone https://github.com/ZooCrypt/PG.git PG-AutoGnP

# install ntl
cd ~/ntl-9.7.1/src
./configure NTL_GMP_LIP=on SHARED=on
make
sudo make install

# install factory
cd ~/factory-4.0.2
./configure --disable-streamio --without-Singular --disable-static
make
sudo make install

# compile autolwe
cd ~/autolwe
opam init -a -y
opam switch create 4.02.3
eval $(opam env)
opam update -y
opam upgrade -y
opam pin add autognp . -n -y
opam install -y autognp --deps-only

make
make test-examples

# setup proof general
cd ~/PG-AutoGnP
make

echo "(load \"~/PG-AutoGnP/generic/proof-site.el\")" > ~/.emacs
echo "(setq autognp-prog-name \"~/autolwe/autognp -emacs\")" >> ~/.emacs

