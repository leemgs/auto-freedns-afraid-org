# auto-freedns-afraid-org
Automatically log-in for account and sub-domain at freedns.afraid.org


Step 1:
Copy the scrit files to /etc/script/ folder.
```bash
$ sudo mkdir /etc/script/
$ sudo vi /etc/script/afraid-autoip.sh
  - Update your ID and password.
$ sudo vi /etc/script/afraid-autologin.sh
  - Update your ID and password.
$ sudo chmod 755 /etc/script/*.sh
```


Step 2: 
Please edit /etc/crontab file for cron tasks.
```bash
$ sudo vi /etc/crontab
##### 2013-05-16: Refresh your login-in ID and IP address of your sub-domain at freedns.afraid.org
30 * * * * root /etc/script/afraid-autoip.sh
30 * * * * root /etc/script/afraid-autologin.sh
```
