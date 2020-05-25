execute @s[tag=host,scores={players=2..}] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @s[tag=host,scores={players=2..}] ~ ~ ~ tag @r add speedrunner
execute @s[tag=host,scores={players=2..}] ~ ~ ~ scoreboard players set @a[tag=speedrunner] progress 1
execute @s[tag=host,scores={players=2..}] ~ ~ ~ tag @a[tag=!speedrunner] add hunter
execute @s[tag=host,scores={players=2..}] ~~~ xp 1l @a
execute @s[tag=host,scores={players=2..}] ~~~ title @a[tag=speedrunner] subtitle §cBeat Minecraft and win!
execute @s[tag=host,scores={players=2..}] ~~~ title @a[tag=speedrunner] title §cMinecraft Manhunt
execute @s[tag=host,scores={players=2..}] ~~~ title @a[tag=hunter] subtitle §cHunt down the runner and win!
execute @s[tag=host,scores={players=2..}] ~~~ title @a[tag=hunter] title §cMinecraft Manhunt
gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule doimmediateRespawn false
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
gamerule falldamage true
time set noon
clear @a[tag=host,scores={settings_state=2}]
tp @a[tag=host,scores={settings_state=2}] 0 100 0
spreadplayers 0 0 1 2 @a[tag=host,scores={settings_state=2}]
execute @a[tag=host,scores={settings_state=2}] ~ ~ ~ spawnpoint @s ~ ~ ~
execute @s[tag=host,scores={settings_state=2}] ~~~ give @a[tag=!speedrunner] compass
execute @s[tag=host,scores={settings_state=2}] ~~~ playsound mob.elderguardian.curse @a
execute @s[tag=host,scores={settings_state=2}] ~~~ title @a title §c§lGame started
execute @s[tag=host,scores={settings_state=2}] ~~~ title @a subtitle §c§lspeedrunner: §b@a[tag=speedrunner]
execute @s[tag=host,scores={settings_state=2}] ~~~ gamemode s @a
execute @s[tag=host,scores={settings_state=2}] ~~~ replaceitem entity @a[tag=speedrunner] slot.armor.chest 0 iron_chestplate 1
execute @s[tag=host,scores={players=2..,settings_time=0}] ~~~ scoreboard players set @s timer 18000
execute @s[tag=host,scores={players=2..,settings_time=1}] ~~~ scoreboard players set @s timer 36000
tellraw @s[tag=host,scores={settings_state=1}] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game."}]}
tellraw @s[tag=host,scores={settings_state=1}] {"rawtext":[{"text":"§c§lERROR§r Cannot start the game if there is only one person."}]}