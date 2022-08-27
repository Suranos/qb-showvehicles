# qb-showvehicles


**Show Vehicles:**
* Spawn car at specificied vector4
* Can place multiple cars, anywhere on map by adding new lines
* Cars locked and clean automatically
* Change license plate text in client.lua line #35

**Add More Cars to config**
* Easy to add more cars, just keep the format as seen below and in your config, You can add as many cars as you want! just make sure to change the number the higher you go, in the example below we have 4 police cars set to spawn at the main PD in the city.

```lua
Config.Table = {
     ['PDcars'] = { -- Name whatever you want just make sure to put name in the ['NAMEHERE']
         ['Vehicles'] = { -- DO NOT CHANGE NAME OF THIS
             [1] = { -- Vehicle 1
                 coords = vector4(407.96, -998.0, 28.87, 52.12), --Change the vector4 to change vehicle spawn location
                 defaultVehicle = 'police' -- Spawn/Model name of the vehicle you want to spawn
             },
             [2] = { -- Vehicle 2
                 coords = vector4(408.47, -993.59, 28.88, 52.33),--Change the vector4 to change vehicle spawn location
                 defaultVehicle = 'police2' -- Spawn/Model name of the vehicle you want to spawn
             },
             [3] = { -- Vehicle 3
                 coords = vector4(407.72, -988.66, 29.02, 51.69),--Change the vector4 to change vehicle spawn location
                 defaultVehicle = 'police3' -- Spawn/Model name of the vehicle you want to spawn
             },
             [4] = { --Vehicle4
                 coords = vector4(408.21, -984.52, 28.87, 51.49), --Change the vector4 to change vehicle spawn location
                 defaultVehicle = 'police4' -- Spawn/Model name of the vehicle you want to spawn
             } -- Always make sure to leave the , off of the last bracket once you are done adding cars!
         }
     }
}
```



