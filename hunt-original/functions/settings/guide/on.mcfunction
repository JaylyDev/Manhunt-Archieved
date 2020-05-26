execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard players set @s settings_guide 1
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"Turned §eon§f guides."}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"§cThis feature is currenly on beta, there might have lots of issues when you play the game (especially going to the end!). Feel free to report any bugs and hopefully I can fix them all."}]}
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=host,scores={settings_state=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Cannot change settings as the game has started."}]}