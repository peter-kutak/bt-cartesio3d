#zapnem bluetooth - celkom to nefunguje s apletom ten sice urobi to iste ale toto ho nezapne
#rfkill list
#rfkill unblock bluetooth

#najdem zariadenia
hcitool scan
hcitool inq
hcitool info 00:12:04:01:79:16

#vytvori /dev/rfcomm0
#spojenie sa nadviaze az pri otvoreni /dev
#bind treba urobit vzdy po reboote rucne - ten graficky aplet bud blbne alebo to vobec nevie
rfcomm bind 0 00:12:04:01:79:16 1


#info
rfcomm -a
hcitool con
hcitool rssi 00:12:04:01:79:16
hciconfig hci0 -a
