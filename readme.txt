Hallo liebe Person mit (hoffentlich vorhandenem) Interesse an Unwetter-Warnungen, 

es folgen ein par Hinweise zur Verwendung des Codes,
der in den folgenden beiden Dateien steht:
dwd_warnings.sh
warnings.py

Das shell-Skript muss erstmal ausführbar gemacht werden:
> chmod +x dwd_warnings.sh

Es müssen die folgenden Befehle verfügbar sein (also die entsprechenden Pakete installiert sein):
wget
iconv
python3
pico2wave
cw
alsa-utils

Dafür kann normalerweise jeweils der folgende Befehl verwendet werden: 
> sudo apt-get install $PAKETNAME

Die Pfadangabe (im meinem Fall: /home/sven/*) muss an den eigenen Pfad, in dem die beiden Skripte liegen angepasst werden 

Der Code ist zu 100% als open-source anzusehen und darf nach Herzenslust modifiziert und verbreitet werden,
wenn folgende letzten beiden Zeilen in dieser readme.txt erhalten bleiben. ;)

Autor der ersten Version des Codes: 
Sven Martin Eiermann (DO7MET)
