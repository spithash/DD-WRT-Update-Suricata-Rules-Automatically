# Updating Emerging Threats Rules on DD-WRT & Restarting Suricata
This is a simple script for updating Emerging Threats rules files and restarting suricata for dd-wrt. Keeping rules updated for the win.

## Installing from the terminal (ssh)
> Entware is required see more here: https://wiki.dd-wrt.com/wiki/index.php/Installing_Entware

1) Copy et-update.sh in your /opt/bin/ folder and give execute permissions to it `chmod +x /opt/bin/et-update.sh`
2) Install cron on dd-wrt `opkg install cron` if you don't have it already.
3) Go to your DD-WRT's Web Interface at *Administration -> Management* tab, in the **Cron** field where is says "Additional Cron Jobs" and paste this line `0 0 * * * root /bin/sh -c /opt/bin/et-update.sh > /dev/null 2>&1`
4) In your terminal run the command: `stopservice crond && startservice crond` and you're done.

It is important though to change inside the script (or leave as is if you're on the same version) the `suricata-4.1.8` part from the URL we're fetching the rules from, to match your version of suricata. To find what's yours, simply do a `suricata -V` -- mine says `This is Suricata version 4.1.8 RELEASE` so I changed it to that.

By default this cronjob will run every day at 00:00

I personally run suricata on the **br0** interface, but it's up to you to change that. Use `ifconfig` to find the interface that suits you.

Hope someone finds it useful, enjoy :)

### Shoutouts

@OISF

https://rules.emergingthreats.net/
