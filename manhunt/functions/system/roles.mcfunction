execute @a[tag=host,scores={settings_state=2}] ~~~ title @a[tag=Hunter] actionbar §c§lFind and kill §4§b@a[tag=Speedrunner]§r.
kill @e[type=item,name=Compass]

#alive player counter 
scoreboard players set @a[tag=host] players 0
scoreboard players set @a[tag=host] speed_alive 0
scoreboard players set @a[tag=host] hunt_alive 0
scoreboard players set @a counter 1
scoreboard players set @a[tag=Speedrunner] speedcount 1
scoreboard players set @a[tag=Hunter] huntcount 1

execute @a[tag=host] ~~~ execute @a ~~~ scoreboard players operation @a[tag=host] players += @s counter
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players operation  "§aJoined: " display = @a[tag=host] players
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players reset "§aJoined: " display
#speedrunner counter
execute @a[tag=host] ~~~ execute @a[tag=Speedrunner] ~~~ scoreboard players operation @a[tag=host] speed_alive += @s speedcount
execute @a[tag=host] ~~~ execute @a[tag=Hunter] ~~~ scoreboard players operation @a[tag=host] hunt_alive += @s huntcount
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§bSpeedrunner: " display = @a[tag=host] speed_alive
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§cHunters: " display = @a[tag=host] hunt_alive
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players reset "§bSpeedrunner: " display
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players reset "§cHunters: " display

#spec
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ tag @s remove Speedrunner
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ tag @s remove Hunter
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ title @a[tag=spec] actionbar §e§lSpectating
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ gamemode a @s
xp -100l @a[tag=!Speedrunner,tag=!Hunter,tag=spec]
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] invisibility 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] weakness 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] fire_resistance 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] water_breathing 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] regeneration 1 255 true