# Change all scouts to survival
	execute as @a[scores={scout=1}] run function scouting:stop

# Remove scoreboards
	scoreboard objectives remove scout
	scoreboard objectives remove scout_x
	scoreboard objectives remove scout_y
	scoreboard objectives remove scout_z
	scoreboard objectives remove scout_a
	scoreboard objectives remove scout_b

# Disable pack
	tellraw @s ["",{"text":"Run ","color":"yellow"},{"text":"/datapack disable","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack disable"},"hoverEvent":{"action":"show_text","value":"/datapack disable"}},{"text":" to disable Scouting","color":"yellow"}]
