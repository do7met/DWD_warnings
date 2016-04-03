#!/bin/bash

region="Region Hannover"

rm /home/sven/warnings.json
/usr/bin/wget --output-document=/home/sven/warnings.json http://www.dwd.de/DWD/warnungen/warnapp/json/warnings.json
/usr/bin/iconv -t utf-8 /home/sven/warnings.json > /home/sven/warnings_new.json
/usr/bin/python3 /home/sven/warnings.py $region > /home/sven/dwd_warnung_GI.txt
/usr/bin/pico2wave -w /home/sven/warnungen_GI.wav -l de-DE "`tail -n +1 /home/sven/dwd_warnung_GI.txt`"
towrite="`tail -n +1 /home/sven/dwd_warnung_GI.txt`"
echo $towrite
#beep -l 1000
echo "DWD" | cw -s c -w 20 -t 1000
/usr/bin/aplay /home/sven/warnungen_GI.wav




