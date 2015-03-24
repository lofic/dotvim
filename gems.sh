# puppet-lint
gem install --user-install --no-document puppet-lint

# markdown to pdf
test -f /etc/redhat-release && sudo yum -y install ruby-devel zlib-devel gcc make libicu-devel redhat-rpm-config
test -f /etc/debian_version && sudo apt -y install ruby-dev zlib1g-dev gcc make
gem install --user-install --no-document gimli
