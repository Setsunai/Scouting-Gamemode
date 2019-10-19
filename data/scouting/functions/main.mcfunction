# Enables trigger for all players
	scoreboard players enable @a scout

# Survival to scout
	execute as @a[scores={scout=1}] at @s run function scouting:checkpos

# Scout to survival
	execute as @a[scores={scout=3}] at @s run function scouting:tosurv

#Resets trigger scores
	execute as @a[scores={scout=3}] run scoreboard players set @s scout 0