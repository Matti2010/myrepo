iptables -I FORWARD -i tun0 -o eth0 -s 10.8.0.0/24 -d 10.0.0.0/24 -m conntrack --ctstate NEW -j ACCEPT
iptables -I FORWARD -i tun0 -o eth0 -s 10.8.0.0/24                        -m conntrack --ctstate NEW -j ACCEPT
iptables -I FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -t nat -I POSTROUTING -o eth0 -s 10.8.0.0/24 -j MASQUERADE
iptables -t nat -I POSTROUTING -o eth0 -s 10.0.0.0/24 -j MASQUERADE
hello
