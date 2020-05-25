#scoreboard setup
scoreboard objectives add display dummy "§l§cManhunt"
scoreboard objectives add counter dummy
scoreboard objectives add settings_state dummy
scoreboard objectives add speed_alive dummy
scoreboard objectives add hunt_alive dummy
scoreboard objectives add speedcount dummy
scoreboard objectives add huntcount dummy
scoreboard objectives add players dummy
scoreboard objectives add timer dummy
scoreboard objectives add settings_healing dummy
scoreboard objectives add settings_time dummy
scoreboard objectives add settings_warmup dummy
scoreboard objectives add progress dummy
#default settings
scoreboard players set @s settings_healing 1
scoreboard players set @s settings_time 0
scoreboard players set @s settings_warmup 0
#tp to 0,0
scoreboard objectives setdisplay sidebar display
spreadplayers 0 0 1 2 @a
spawnpoint @a 0 100 0
setworldspawn 0 100 0
tag @s add host
#game states: 1 = set up finish, 2 = started
scoreboard players set @a[tag=host] settings_state 1
gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule doimmediateRespawn false
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
gamerule falldamage false
time set noon
tellraw @s {"rawtext":[{"text":"§aSetup complete."}]}
tellraw @s {"rawtext":[{"text":"§aYou can now allow players to join and use §e/function start§a to start the game."}]}
tellraw @s {"rawtext":[{"text":"§ePlease make sure that you do NOT leave until the game ends, or the game will corrupt."}]}