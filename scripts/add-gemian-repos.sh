#!/bin/sh

rm -f /etc/resolv.conf
echo "nameserver 8.8.8.8" > /etc/resolv.conf

echo "deb [trusted=yes] http://gemian.thinkglobally.org/buster/ buster main" >> /etc/apt/sources.list.d/gemian.list
echo "deb [trusted=yes] http://gemian-buster.thinkglobally.org/buster/ buster main" >> /etc/apt/sources.list.d/gemian.list

echo "" >> /etc/apt/preferences.d/gemian.pref
echo "Package: *" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: origin gemian.thinkglobally.org" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: release o=Gemian,a=buster" >> /etc/apt/preferences.d/gemian.pref
echo "Pin-Priority: 2000" >> /etc/apt/preferences.d/gemian.pref

curl http://gemian.thinkglobally.org/archive-key.asc | apt-key add -
