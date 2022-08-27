Config = {}
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
 } -- Always make sure to leave the , off of the last bracket once you are done adding cars to the table!
}