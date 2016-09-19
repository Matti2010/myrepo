sudo /sbin/iptables -P FORWARD ACCEPT
sudo /sbin/iptables --table nat -A POSTROUTING -o eth0 -j MASQUERADE
