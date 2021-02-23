test -f /etc/debian_version && sudo apt -y install ansible-lint

if [ -f /etc/redhat-release ]; then
    sudo yum -y install python3-pip
    pip3 install --user ansible-lint
fi

