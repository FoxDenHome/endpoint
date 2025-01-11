#!/bin/sh
ln -sf /opt/endpoint/systemd.timer /etc/systemd/system/opt-endpoint-backup.timer
ln -sf /opt/endpoint/systemd.service /etc/systemd/system/opt-endpoint-backup.service
ln -sf /opt/endpoint/systemd.slice /etc/systemd/system/opt-endpoint-backup.slice
systemctl daemon-reload
systemctl enable --now opt-endpoint-backup.timer
