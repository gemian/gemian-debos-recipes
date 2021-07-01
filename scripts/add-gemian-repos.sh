#!/bin/sh

rm -f /etc/resolv.conf
echo "93.189.6.11 gemian-buster.thinkglobally.org" >> /etc/hosts
echo "nameserver 8.8.8.8" > /etc/resolv.conf

echo "deb [trusted=yes] http://gemian-planet.thinkglobally.org/bullseye/ bullseye main" >> /etc/apt/sources.list.d/gemian.list

echo "" >> /etc/apt/preferences.d/gemian.pref
echo "Package: *" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: origin gemian-planet.thinkglobally.org" >> /etc/apt/preferences.d/gemian.pref
echo "Pin-Priority: 2000" >> /etc/apt/preferences.d/gemian.pref

curl http://gemian.thinkglobally.org/archive-key.asc | apt-key add -
