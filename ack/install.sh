echo '=========Install ack'
[ ! -d ~/bin ] && mkdir ~/bin
curl https://beyondgrep.com/ack-v3.7.0 > ~/bin/ack && chmod +x ~/bin/ack
echo 'Installed version'
ack --version
echo ''
