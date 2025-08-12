#!/bin/bash

rm ~/.config/systemd/user/time_to_go_notifier.service && \
systemctl --user daemon-reload && \
echo "Removed time_to_go_notifier.service"
