# Update Emerging Threats Rules on DD-WRT & Restarting Suricata
This is a simple cronjob for updating Emerging Threats rules files and restarting suricata for dd-wrt. Keeping rules updated for the win.

## Installing
Just install cron on dd-wrt `opkg install cron` and then add a new cronjob `crontab -e` -- then paste that line in and you're done. 

By default this cronjob will run every day at 00:00

I personally run suricata on the br0 interface, but it's up to you to change that.

Hope someone finds it useful, enjoy :)
