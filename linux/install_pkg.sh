sudo sed -i 's@mirrors.edge.kernel.org@mirror.kakao.com@g' /etc/apt/sources.list

sudo dpkg --add-architecture i386

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y gcc gcc-multilib g++ g++-multilib gdb gdb-multiarch
sudo apt-get install -y libc6-dev-i386 libc6-dbg libncurses5:i386 libstdc++6:i386

# miasm, radare2, pwntools, ROPgadget, capstone-engine, keystone-engine, etc..
# https://stackoverflow.com/questions/29310688/sudo-pip-install-vs-pip-install-user
sudo apt-get install -y python3 python3-pip python3-dev python3-setuptools git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
pip3 install keystone-engine
pip3 install miasm

git clone https://github.com/radare/radare2 .radare2
./.radare2/sys/install.sh

# angr, z3, pysmt, sympy, archinfo, pyvex, claripy, cle, unicorn-engine, etc..
pip3 install angr

# Ropper, rp++
pip3 install ropper
wget https://github.com/0vercl0k/rp/releases/latest/download/rp-lin-gcc.zip
unzip rp-lin-gcc.zip
chmod 755 rp-lin
rm -f rp-lin-gcc.zip

# pwndbg
git clone https://github.com/pwndbg/pwndbg .pwndbg
cd .pwndbg
./setup.sh
cd ../

# Pwngdb
git clone https://github.com/scwuaptx/Pwngdb .Pwngdb
echo "source ~/.pwndbg/gdbinit.py\nsource ~/.Pwngdb/pwngdb.py\nsource ~/.Pwngdb/angelheap/gdbinit.py\ndefine hook-run\npython\nimport angelheap\nangelheap.init_angelheap()\nend\nend" >> ~/.gdbinit

# seccomp-tools, one_gadget
sudo apt-get install -y gcc ruby-dev
gem install seccomp-tools
gem install one_gadget

# libc-database
# git clone https://github.com/niklasb/libc-database
# ./libc-database/get ubuntu debian

# etc
pip3 install requests
sudo apt-get install -y wget make vim net-tools

# .vimrc
echo "set nu" >> ~/.vimrc
echo "set mouse=a" >> ~/.vimrc
echo "set ignorecase" >> ~/.vimrc
echo "set hlsearch" >> ~/.vimrc
echo "set incsearch" >> ~/.vimrc
echo "set softtabstop=2" >> ~/.vimrc
echo "set tabstop=2" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
