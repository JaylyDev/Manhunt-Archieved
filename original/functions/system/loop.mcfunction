execute @a[tag=host,scores={settings_state=1}] ~~~ title @a actionbar §eWaiting to start...
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a weakness 1 0 true

execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=hunter] ~~~ spreadplayers ~ ~ 1 2 @s
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=hunter] ~~~ title @s title You died!
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=hunter] ~~~ tellraw @s {"rawtext":[{"text":"§7You died! Go hunt the Speedrunner down in a limited time!"}]} 
execute @a[tag=host,scores={settings_state=2}] ~~~ give @a[l=0,lm=0,tag=hunter] compass
execute @a[tag=host,scores={settings_state=2}] ~~~ xp 1l @a[l=0,lm=0,tag=hunter]
execute @a[tag=speedrunner] ~ ~ ~ setworldspawn
#spectating
execute @a[tag=spec] ~ ~ ~ function spec
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!speedrunner,tag=!hunter,tag=!spec] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§aYou are spectating the match, please do not leave until the match ends."}]}
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!speedrunner,tag=!hunter,tag=!spec] ~ ~ ~ ability @s mayfly true
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!speedrunner,tag=!hunter,tag=!spec] ~ ~ ~ gamemode a @s
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!speedrunner,tag=!hunter,tag=!spec] ~ ~ ~ tp @s @r[tag=!spec]
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!speedrunner,tag=!hunter,tag=!spec] ~ ~ ~ tag @s add spec
execute @a[tag=host,scores={settings_state=2}] ~~~ clear @a[tag=!speedrunner,tag=!hunter,tag=spec]

#timerend
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cHunter(s) won the game!"}]}
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ title @a title §cGame ended
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ title @a[tag=speedrunner] subtitle §cYou lost!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ title @a[tag=speedrunner] title 
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ title @a[tag=hunter] subtitle §eCongrats!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ title @a[tag=hunter] title §eYou have won!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ gamemode 2 @a
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ xp -32427l @a
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ execute @a[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..}] ~~~ scoreboard players set @s settings_state 0
execute @s[tag=host,scores={settings_state=0}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ tag @a remove hunter
execute @s[tag=host,scores={settings_state=0}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ tag @a remove spec
execute @s[tag=host,scores={settings_state=0}] ~~~ execute @a[tag=speedrunner,l=0,lm=0] ~ ~ ~ tag @a remove speedrunner
execute @s[tag=host,scores={settings_state=0}] ~ ~ ~ scoreboard objectives setdisplay sidebar

execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ tellraw @a {"rawtext":[{"text":"§eSpeedrunner won the game!"}]}
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ title @a title §cGame ended
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ title @a[tag=speedrunner] subtitle §eCongrats!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ title @a[tag=speedrunner] title §eYou have won!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ title @a[tag=hunter] subtitle §cYou lost!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ title @a[tag=hunter] title 
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ gamemode 2 @a
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=1..,timer=0}] ~~~ xp -32427l @a
execute @s[tag=host,scores={settings_state=2,hunt_alive=1..,timer=0}] ~~~ tag @a remove hunter
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,timer=0}] ~~~ tag @a remove speedrunner
execute @s[tag=host,scores={settings_state=2,speed_alive=0,hunt_alive=0,timer=0}] ~~~ tag @a remove spec
execute @s[tag=host,scores={settings_state=2,speed_alive=0,hunt_alive=0,timer=0}] ~~~ scoreboard players set @s settings_state 0
execute @s[tag=host,scores={settings_state=0}] ~ ~ ~ scoreboard objectives setdisplay sidebar

execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cHunter(s) left the game! Speedrunner wins!"}]}
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ title @a title §cGame ended
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ title @a[tag=speedrunner] subtitle §eYou won!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ title @a[tag=speedrunner] title §eCongrats!
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ gamemode 2 @a
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ xp -32427l @a
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ tag @a remove spec
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ tag @a remove speedrunner
execute @s[tag=host,scores={settings_state=2,speed_alive=1..,hunt_alive=0}] ~ ~ ~ scoreboard players set @s settings_state 0
execute @s[tag=host,scores={settings_state=0}] ~ ~ ~ scoreboard objectives setdisplay sidebar

#rules
kill @e[type=xp_orb]
execute @s[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s timer 1
execute @a[tag=host,scores={settings_state=0}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a instant_health 1 255 true
#something else
execute @a[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
execute @a[tag=host,scores={settings_state=2}] ~~~ gamemode survival @a[tag=!spec]
#events for different time settings
execute @s[tag=host,scores={settings_state=2,settings_time=0}] ~~~ function system/events/normal
execute @s[tag=host,scores={settings_state=2,settings_time=1}] ~~~ function system/events/long
#Match End(since this is global why not put it here)
#if the last few players were all noob/pro and they could not kill each other for 20 mins
#one second = 20 ticks(usually)
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ tellraw @a {"rawtext":[{"text":"§eMatch End in 15 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ tellraw @a {"rawtext":[{"text":"§eMatch End in 10 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ tellraw @a {"rawtext":[{"text":"§eMatch End in 5 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ tellraw @a {"rawtext":[{"text":"§eMatch End in 1 minute!"}]}
execute @s[tag=host,scores={settings_state=2,timer=100}] ~~~ title @a subtitle §eMatch end in §l10
execute @s[tag=host,scores={settings_state=2,timer=100}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=90}] ~~~ title @a subtitle §eMatch End in §l9
execute @s[tag=host,scores={settings_state=2,timer=90}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=80}] ~~~ title @a subtitle §eMatch End in §l8
execute @s[tag=host,scores={settings_state=2,timer=80}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=70}] ~~~ title @a subtitle §eMatch End in §l7
execute @s[tag=host,scores={settings_state=2,timer=70}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=60}] ~~~ title @a subtitle §eMatch End in §l6
execute @s[tag=host,scores={settings_state=2,timer=60}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=50}] ~~~ title @a subtitle §eMatch End in §l5
execute @s[tag=host,scores={settings_state=2,timer=50}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=40}] ~~~ title @a subtitle §eMatch End in §l4
execute @s[tag=host,scores={settings_state=2,timer=40}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=30}] ~~~ title @a subtitle §eMatch End in §l3
execute @s[tag=host,scores={settings_state=2,timer=30}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=20}] ~~~ title @a subtitle §eMatch End in §l2
execute @s[tag=host,scores={settings_state=2,timer=20}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=10}] ~~~ title @a subtitle §eMatch End in §l1
execute @s[tag=host,scores={settings_state=2,timer=10}] ~~~ title @a title §f
