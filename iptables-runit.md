# Firewalls
## install the iptables-runit package
```
pacman -S iptables-runit
```
## Applying the rules at boot
## add the following to /etc/rc.local
```
if [ -e /etc/iptables/iptables.rules ]; then
  iptables-restore /etc/iptables/iptables.rules
fi

if [ -e /etc/iptables/ip6tables.rules ]; then
  ip6tables-restore /etc/iptables/ip6tables.rules
fi
```
## After rebooting, check the active firewall rules:
```
iptables -L
ip6tables -L
```

## Applying the rules at runtime
```
sv down iptables
sv up iptables
```

## src
```
https://docs.voidlinux.org/config/network/firewalls.html
```
