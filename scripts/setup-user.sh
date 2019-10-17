#!/bin/sh
groupadd -g 1001 radio
useradd -u 1001 -g 1001 -s /usr/sbin/nologin radio
groupadd -g 1021 gps
useradd -u 1021 -g 1021 -s /usr/sbin/nologin gps

groupadd -g 1000 aid_system
groupadd -g 1003 aid_graphics
groupadd -g 1004 aid_input
groupadd -g 1005 aid_audio
groupadd -g 3001 aid_net_bt_admin
groupadd -g 3002 aid_net_bt
groupadd -g 3003 aid_inet
groupadd -g 3004 aid_inet_raw
groupadd -g 3005 aid_inet_admin
groupadd -g 100000 gemini

useradd -m -u 100000 -g 100000 -G audio,video,sudo,aid_system,aid_graphics,aid_input,aid_audio,aid_net_bt_admin,aid_net_bt,aid_inet,aid_inet_raw,aid_inet_admin -s /bin/bash gemini
