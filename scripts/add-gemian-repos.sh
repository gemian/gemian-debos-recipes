#!/bin/sh

rm -f /etc/resolv.conf
echo "nameserver 8.8.8.8" > /etc/resolv.conf

echo "deb https://gemian.thinkglobally.org/buster/ buster main" >> /etc/apt/sources.list.d/gemian.list
echo "deb https://gemian-planet.thinkglobally.org/buster/ buster main" >> /etc/apt/sources.list.d/gemian.list

echo "" >> /etc/apt/preferences.d/gemian.pref
echo "Package: *" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: origin gemian.thinkglobally.org" >> /etc/apt/preferences.d/gemian.pref
echo "Pin-Priority: 1000" >> /etc/apt/preferences.d/gemian.pref

echo "" >> /etc/apt/preferences.d/gemian.pref
echo "Package: *" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: origin gemian-planet.thinkglobally.org" >> /etc/apt/preferences.d/gemian.pref
echo "Pin-Priority: 2000" >> /etc/apt/preferences.d/gemian.pref

curl https://gemian.thinkglobally.org/archive-key.asc | apt-key add -
