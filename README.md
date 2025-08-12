# Time to go notifier
A countdown timer that fires system notification with `notify-send`
to tell that its time to go home.

## Installation
Change `ExecStart` in [time_to_go_notifier.service](./time_to_go_notifier.service)
to the correct path of [time_to_go.sh](./time_to_go.sh)
```
[Service]
ExecStart=%h/<YOUR_PATH>/time_to_go.sh
```
projects/Time-To-Go
Than run `./setup.sh`
```bash
./setup.sh
```

## Set notification time
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
## Preview
### Notification
![image](./notification-screenshot.png)
### Logs
```
● time_to_go_notifier.service - Time To Go Notification
     Loaded: loaded (/home/alex/.config/systemd/user/time_to_go_notifier.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2025-08-12 19:57:00 CST; 3ms ago
   Main PID: 8259 (time_to_go.sh)
      Tasks: 1 (limit: 38104)
     Memory: 800.0K
        CPU: 2ms
     CGroup: /user.slice/user-1000.slice/user@1000.service/app.slice/time_to_go_notifier.service
             ├─8259 /bin/bash /home/alex/projects/Time-To-Go/time_to_go.sh
             └─8265 sleep 0

Aug 12 19:57:00 alex-System-Product-Name systemd[2926]: Started Time To Go Notification.
Aug 12 19:57:00 alex-System-Product-Name time_to_go.sh[8259]: Current time: 19:57:00
Aug 12 19:57:00 alex-System-Product-Name time_to_go.sh[8259]: Target time: 18:25:0
Aug 12 19:57:00 alex-System-Product-Name time_to_go.sh[8259]: Waiting 0 seconds...
```
