#!/bin/sh
ln -sf /opt/endpoint/systemd.timer /etc/systemd/system/opt-endpoint-backup.timer
ln -sf /opt/endpoint/systemd.service /etc/systemd/system/opt-endpoint-backup.service
systemctl enable --now opt-endpoint-backup.timer
