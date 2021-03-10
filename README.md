# Updating Emerging Threats Rules on DD-WRT & Restarting Suricata
This is a simple cronjob for updating Emerging Threats rules files and restarting suricata for dd-wrt. Keeping rules updated for the win.

## Installing from the terminal (ssh)
> Entware is required see more here: https://wiki.dd-wrt.com/wiki/index.php/Installing_Entware

Just install cron on dd-wrt `opkg install cron` and then add a new cronjob `crontab -e` -- then paste that line in and you're done. It is important though to change (or leave as is) the `suricata-4.1.8` part from the URL we're fetching the rules from to match your version of suricata. To find what's yours, simply do a `suricata -V` -- mine says `This is Suricata version 4.1.8 RELEASE` so I changed it to that.

By default this cronjob will run every day at 00:00

I personally run suricata on the **br0** interface, but it's up to you to change that. Use `ifconfig` to find the interface that suits you.

Hope someone finds it useful, enjoy :)

### Shoutouts

@OISF

https://rules.emergingthreats.net/
