#!/bin/bash

ln -s $PWD/time_to_go_notifier.service ~/.config/systemd/user/ && \
systemctl --user daemon-reload && \
systemctl --user enable --now time_to_go_notifier.service && \
systemctl --user status time_to_go_notifier.service
