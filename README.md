# Time to go notifier
A countdown timer that fires system notification with `notify-send`
to tell that its time to go home.

## Prerequisite
Change `ExecStart` in [time_to_go_notifier.service](./time_to_go_notifier.service)
to the correct path of [time_to_go.sh](./time_to_go.sh)
```
[Service]
ExecStart=%h/<YOUR_PATH>/time_to_go.sh
```
## Installation
```bash
./setup.sh
```

## Change notification time
Set the target time for the notification to fire at the top of [time_to_go.sh](./time_to_go.sh).
```bash
#######################################
# CONFIGURATION — SET YOUR TIME HERE
#######################################
TARGET_HOUR=18   # Hour (0–23)
TARGET_MIN=25    # Minute (0–59)
TARGET_SEC=0     # Second (0–59)
#######################################
```
Reload target time
```bash
./reload.sh
```
## Uninstall
```bash
./uninstall.sh
```
## Preview
### Notification
![image](./notification-screenshot.png)
