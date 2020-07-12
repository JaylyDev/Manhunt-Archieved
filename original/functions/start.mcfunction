execute @a[tag=host,scores={players=2..}] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @a[tag=host,scores={players=2..,applytrack=1..}] ~ ~ ~ execute @r[tag=track,tag=!speedrunner,tag=!hunter] ~~~ tag @a add speedrunner
execute @a[tag=host,scores={players=2..,applytrack=0}] ~ ~ ~ tag @r[tag=!track,tag=!speedrunner,tag=!hunter] add speedrunner
execute @a[tag=host,scores={players=2..}] ~ ~ ~ scoreboard players set @a[tag=hunter] progress 1
execute @a[tag=host,scores={players=2..}] ~ ~ ~ tag @a[tag=!track,tag=!speedrunner] add hunter
execute @a[tag=host,scores={players=2..}] ~~~ xp 1l @a
tag @a remove track
gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule doimmediateRespawn false
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
gamerule falldamage true
time set noon
execute @a[tag=host,scores={settings_state=2}] ~ ~ ~ clear @a
execute @a[tag=host,scores={settings_state=2}] ~ ~ ~ spawnpoint @a ~ ~ ~
execute @a[tag=host,scores={settings_state=2}] ~~~ playsound mob.elderguardian.curse @a
execute @a[tag=host,scores={settings_state=2}] ~~~ title @a title §cMinecraft Manhunt
execute @a[tag=host,scores={settings_state=2}] ~~~ title @a subtitle §c§lSpeedrunner: §b@a[tag=speedrunner]
execute @a[tag=host,scores={settings_state=2}] ~~~ gamemode s @a
execute @a[tag=host,scores={settings_state=2}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=host,scores={settings_state=2}] ~~~ replaceitem entity @a[tag=speedrunner] slot.hotbar 0 cooked_beef 8
execute @a[tag=host,scores={settings_state=2}] ~~~ replaceitem entity @a[tag=hunter] slot.hotbar 0 compass
execute @a[tag=host,scores={settings_state=2}] ~~~ replaceitem entity @a[tag=hunter] slot.hotbar 1 cooked_beef 8
execute @a[tag=host,scores={players=2..,timer_enabled=1,settings_time=0}] ~~~ scoreboard players set @a timer 18000
execute @a[tag=host,scores={players=2..,timer_enabled=1,settings_time=1}] ~~~ scoreboard players set @a timer 36000
execute @a[tag=host,scores={settings_state=2}] ~~~ effect @a instant_health 1 255
execute @a[tag=host,scores={settings_state=2}] ~~~ effect @a saturation 1 255
tellraw @a[tag=host,scores={settings_state=1}] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game."}]}
tellraw @a[tag=host,scores={settings_state=1}] {"rawtext":[{"text":"§c§lERROR§r Cannot start the game if there is only one person."}]}
execute @a[tag=host,scores={players=2..,timer_enabled=0}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP has been turned on."}]}
execute @a[tag=host,scores={players=2..,timer_enabled=0}] ~~~ gamerule pvp true
execute @a[tag=host,scores={players=2..,timer_enabled=0}] ~~~ gamerule falldamage true