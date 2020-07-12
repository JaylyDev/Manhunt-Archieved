execute @s[tag=host,scores={settings_state=2}] ~~~ title @a[tag=hunter] actionbar Find and kill §c@a[tag=speedrunner]§r.

kill @e[type=item,name="Kompass"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="Compass"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="Πυξίδα"]
kill @e[type=item,name="Boussole"]
kill @e[type=item,name="Brújula"]
kill @e[type=item,name="Kompassi"]
kill @e[type=item,name="Brújula"]
kill @e[type=item,name="Компас"]
kill @e[type=item,name="Boussole"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="コンパス"]
kill @e[type=item,name="Iránytű"]
kill @e[type=item,name="Bussola"]
kill @e[type=item,name="나침반"]
kill @e[type=item,name="Kompass"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="Bússola"]
kill @e[type=item,name="Kompas"]
kill @e[type=item,name="Pusula"]
kill @e[type=item,name="Bússola"]
kill @e[type=item,name="Компас"]
kill @e[type=item,name="Компас"]
kill @e[type=item,name="Kompass"]
kill @e[type=item,name="指南針"]
kill @e[type=item,name="指南针"]

#alive player counter 
scoreboard players set @a[tag=host] players 0
scoreboard players set @a[tag=host] speed_alive 0
scoreboard players set @a[tag=host] hunt_alive 0
scoreboard players set @a[tag=host] applytrack 0
scoreboard players set @a counter 1
scoreboard players set @a[tag=speedrunner] speedcount 1
scoreboard players set @a[tag=hunter] huntcount 1
scoreboard players set @a[tag=track] trackcount 1

execute @a[tag=host] ~~~ execute @a ~~~ scoreboard players operation @a[tag=host] players += @s counter
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players operation  "§aJoined: " display = @a[tag=host] players
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players reset "§aJoined: " display
#speedrunner counter
execute @a[tag=host] ~~~ execute @a[tag=speedrunner] ~~~ scoreboard players operation @a[tag=host] speed_alive += @s speedcount
execute @a[tag=host] ~~~ execute @a[tag=hunter] ~~~ scoreboard players operation @a[tag=host] hunt_alive += @s huntcount
execute @a[tag=host] ~~~ execute @a[tag=track] ~~~ scoreboard players operation @a[tag=host] applytrack += @s trackcount
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§bSpeedrunner: " display = @a[tag=host] speed_alive
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§cHunters: " display = @a[tag=host] hunt_alive
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players reset "§bSpeedrunner: " display
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players reset "§cHunters: " display

execute @a[tag=host,scores={settings_state=1,settings_guide=1}] ~~~ function system/guide
#spec
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ tag @s remove speedrunner
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ tag @s remove hunter
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ title @a[tag=spec] actionbar §e§lSpectating
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=spec] ~ ~ ~ gamemode a @s
xp -100l @a[tag=!Speedrunner,tag=!Hunter,tag=spec]
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] invisibility 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] weakness 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] fire_resistance 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] water_breathing 1 255 true
effect @a[tag=!Speedrunner,tag=!Hunter,tag=spec] regeneration 1 255 true

