#Uninstall Scouting by @Rumbu#5277

#Resets all scout gamemodes
execute as @a[tag=scout] run function scouting:stop
#Removes scoreboards
scoreboard objectives remove scout
scoreboard objectives remove scout_x_store
scoreboard objectives remove scout_y_store
scoreboard objectives remove scout_z_store
scoreboard objectives remove scout_a_store
scoreboard objectives remove scout_b_store
scoreboard objectives remove scout_error

#Disables pack
tellraw @s ["",{"text":"Run ","color":"yellow"},{"text":"/datapack disable","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack disable"},"hoverEvent":{"action":"show_text","value":"/datapack disable"}},{"text":" to disable Scouting","color":"yellow"}]
