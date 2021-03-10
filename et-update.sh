#!/bin/sh

echo -e "\n"
echo -e "\e[1mFetching Rules\e[0m...\n"

if wget -c -q https://rules.emergingthreats.net/open/suricata-4.1.8/emerging.rules.tar.gz -O - | tar -xzv -C /opt/etc/suricata/ ; then
        echo -e "\e[2mRules updated\e[0m"
        else
                echo -e "Error: \e[91mCould not fetch rules\e[0m" && exit 0
fi
echo -e "\e[1mKilling suricata\e[0m...\n"
killall suricata
rm /opt/var/run/suricata.pid > /dev/null 2>&1

echo -e "\e[1mRestarting suricata\e[0m...\n"
/opt/bin/suricata -c /opt/etc/suricata/suricata.yaml -i br0 -D -vvv
echo -e "\e[32mDone!\e[0m"
exit 0
