# qb-sna-flightschool
Realistic Flight School for QB-Core, forked from esx_dmvschool

Todo
Create flight license images in qb-idcard
Check license for rentals
Check license for buy

## Requirements
- [qb-core](https://github.com/qbcore-framework/qb-core)

## Installation
- Change this in qb-core/server/player.lua to have licences available
```
    PlayerData.metadata['licences'] = PlayerData.metadata['licences'] or {
        ['driver'] = false,
        ['business'] = false,
        ['weapon'] = false, 
        ['heli'] = false,                                                           --Add
        ['plane'] = false,                                                          --Add
        ['thflight'] = false,                                                       --Add
    }
```
- Add this in qb-core/shared/items.lua for the theorical permit
```
	--FlightShool permit
	['flight_test_permit'] 				 = {['name'] = 'flight_test_permit',				['label'] = 'Flight Test Permit',			['weight'] = 0,			['type'] = 'item',		['image'] = 'dmv.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Permite for Flying Test'},
	['flight_license'] 				 = {['name'] = 'flight_license',				['label'] = 'Flight License',			['weight'] = 0,			['type'] = 'item',		['image'] = '???.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'License for Aerial vehicles'},
```

- Insert images from /img into qb-inventory\html\images

- Add this in your `server.cfg`:
```
start qb-sna-flightschool
```

# Credits
Credits to :
esx_dmvschool - realistic DMV school for ESX
