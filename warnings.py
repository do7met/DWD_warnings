import json, sys
from pprint import pprint

import codecs

string = str(sys.argv[1])
counter = 0

with codecs.open('/home/sven/warnings_new.json', 'r') as myfile:
    data = myfile.read()


data_json = data.split("ings({")[1].strip(");") # convert to json
data_json = "{"+data_json

info = json.loads(data_json)




test = info['warnings']



for key in test.keys():
    
    
    now = info['warnings'][key][0]['headline']
    region = info['warnings'][key][0]['regionName']
    description = info['warnings'][key][0]['description']
    level = info['warnings'][key][0]['level']
    if string in region and level > 1:
        print(now+" (Stufe "+str(level)+") für "+region)
        counter = counter + 1

if counter == 0:
    print("")
