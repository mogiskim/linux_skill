#!/bin/bash

# rsyslog 시작
rsyslogd

# iptables 서비스 시작
systemctl start iptables

# sshd 시작
/usr/sbin/sshd -D
