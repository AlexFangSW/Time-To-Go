#!/bin/bash

systemctl --user daemon-reload && \
systemctl --user restart time_to_go_notifier.service && \
systemctl --user status time_to_go_notifier.service
