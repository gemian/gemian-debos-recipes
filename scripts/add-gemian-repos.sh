#!/bin/sh

rm -f /etc/resolv.conf
echo "nameserver 8.8.8.8" > /etc/resolv.conf

echo "deb [trusted=yes] http://gemian.thinkglobally.org/bookworm/ bookworm main" >> /etc/apt/sources.list.d/gemian.list

echo "" >> /etc/apt/preferences.d/gemian.pref
echo "Package: *" >> /etc/apt/preferences.d/gemian.pref
echo "Pin: origin gemian.thinkglobally.org" >> /etc/apt/preferences.d/gemian.pref
echo "Pin-Priority: 2000" >> /etc/apt/preferences.d/gemian.pref

